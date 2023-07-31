# quests

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

In the future, you can just run:
```sh
git checkout main
git merge eqmacemu-main
```