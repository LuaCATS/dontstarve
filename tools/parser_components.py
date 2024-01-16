import os
import pathlib
import re
import argparse
import types

parser = argparse.ArgumentParser()
parser.add_argument("-r", "--root", default=(pathlib.Path(
    os.getcwd()) / "data" / "scripts"), help="game root dir")
parser.add_argument("-o", "--output", default="t.lua", help="outputpath")
parser.add_argument("-m", "--meta", default=False,
                    action='store_true', help="output meta file")
args = parser.parse_args()

root = pathlib.Path(args.root)
print(args.root)
print(args.output)
print(args.meta)
components_dir = root / "components"

match_return = re.compile("^\s*return\s+([a-zA-z_]\w*)\s*")

classNames: set[str] = set()
classReplicas: set[str] = set()

match_return_func = re.compile("^\s*return\s+Class\s*\(\s*function\(\s*")


def isReturnClass(lines):
    for line in lines:
        if match_return_func.match(line):
            return True
    return False


def getClassName(filename):
    luapath = pathlib.Path(dirpath).joinpath(filename)
    name = os.path.splitext(pathlib.Path(filename).name)[0]
    _replica = "_replica"
    isReplica = name.lower().find(_replica) != -1
    with open(luapath) as f:
        lines = f.readlines()
        for line in reversed(lines):
            matched = match_return.match(line)
            if matched:
                ret = matched[1]
                print(filename, ":", ret)
                return ret, isReplica
            elif line.strip() != "":
                if isReturnClass(lines):
                    ret = name
                    print(filename, "[return Class]: ", ret)
                    return ret, isReplica
                else:
                    print(filename, ": invaild file")
                    return None, None
    return None, None


for dirpath, dirnames, filenames in os.walk(components_dir):
    for filename in filenames:
        className, isReplica = getClassName(filename)
        if className:
            if isReplica:
                classReplicas.add(className)
            else:
                classNames.add(className)

head = f"""{args.meta and "---@meta" or ""}

---@class EntityScriptComponents
EntityScriptComponents = {{}}
---@class replica
EntityScriptComponentReplicas = {{}}
"""
body = head
for className in classNames:
    if className == 'SpDamageUtil':
        continue
    className = className.lower()
    body = body + f"---@type {className}\nEntityScriptComponents.{ className }={{}}\n"
for className in classReplicas:
    className = className.lower()
    body = body + f"---@type {className}_replica\nEntityScriptComponentReplicas.{ className }={{}}\n"
body += "\n"

with open(args.output, "w+") as f:
    f.write(body)
