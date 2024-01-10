import os
import pathlib
import re
import argparse
import types

parser = argparse.ArgumentParser()
parser.add_argument("-r", "--root", default=(pathlib.Path(
    os.getcwd()) / "data" / "scripts"), help="game root dir")
parser.add_argument("-o", "--output", default="t.lua", help="outputpath")
parser.add_argument("-m", "--meta", default=False, action='store_true', help="output meta file")
args = parser.parse_args()

root = pathlib.Path(args.root)
print(args.root)
print(args.output)
print(args.meta)
components_dir = root / "components"

match_return = re.compile("^\s*return\s+([a-zA-z_]\w*)\s*")

classNames: list[str] = []


match_return_func = re.compile("^\s*return\s+Class\s*\(\s*function\(\s*")
def isReturnClass(lines):
    for line in lines:
        if match_return_func.match(line):
            return True
    return False

def getClassName(filename):
    luapath = pathlib.Path(dirpath).joinpath(filename)
    with open(luapath) as f:
        lines = f.readlines()
        for line in reversed(lines):
            matched = match_return.match(line)
            if matched:
                print(filename, ":", matched[1])
                return matched[1]
            elif line.strip() != "":
                if isReturnClass(lines):
                    name = os.path.splitext(pathlib.Path(filename).name)[0]
                    print(filename, "[return Class]: ", name)
                    return name
                else:
                    print(filename,": invaild file")
                    return None


for dirpath, dirnames, filenames in os.walk(components_dir):
    for filename in filenames:
        className = getClassName(filename)
        if className:
            classNames.append(className)

head = f"""{args.meta and "---@meta" or ""}

---@class EntityScriptComponents
local m = {{}}
"""
body = head
for className in classNames:
    body = body + f"---@type {className}\nm.{ className.lower()}={{}}\n"

body += "\n"

with open(args.output, "w+") as f:
    f.write(body)
