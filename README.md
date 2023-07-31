# TAKP2

Quests for TAKP2 fork

## Setup

Open the cloned repo in vscode, you'll get recommended the following extensions
- [Sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)

Clone [takp2-definitions](https://github.com/takp2/takp2-definitions) into a directory, e.g. c:\src\lua-definitions\eqemtakp2u-definitions

Create a .vscode/settings.json file, and add:
```json
{
    "Lua.runtime.version": "LuaJIT",
    "Lua.workspace.library": [
        "c:\\src\\lua-definitions\\takp2-definitions"
    ],
    "Lua.diagnostics.disable": [
        "lowercase-global"
    ],
    "files.trimTrailingWhitespace": true
}
```
Change c:/src/lua-definitions/takp2-definitions to the path on your machine for takp2-definitions if you changed from my suggestion above

## Pulling from EQMacEmu

First, configure a remote upstream:
```sh
git remote add eqmacemu git@github.com:EQMacEmu/quests.git
git fetch eqmacemu
git checkout -b eqmacemu-main eqmacemu/main
git checkout eqmacemu-main
```

And one time, pull down latest with unreliated history
```sh
git checkout main
git merge eqmacemu-main --allow-unrelated-histories
```