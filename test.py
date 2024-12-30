import os
import pathlib
import subprocess
import re

LUALS_ROOT = os.environ['LUALS_ROOT']
LUALS_BIN = pathlib.Path(LUALS_ROOT) / 'bin/lua-language-server'

target_lua_file_path = pathlib.Path(LUALS_ROOT) / 'test/plugins/ast/helper.lua'

testfile = pathlib.Path('test/plugin_test.lua')
context = testfile.read_text()

replacer_text = re.sub(r'''local\s+search_path\s+=.+''', f'local search_path = [[{os.getcwd()}]]', context)
target_lua_file_path.write_text(replacer_text)
subprocess.run(['lua-language-server', '-n=plugins.test', 'test.lua'], cwd=LUALS_ROOT)
