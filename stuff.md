# git config

## Handy for gerrit with a local branch so you can push from whatever branch without the verbose refs/for/X command
Can add to .git/config or ~/.gitconfig
```
[alias]
  pub = "!f() { git push ${1:-origin} HEAD:`git config branch.$(git name-rev --name-only HEAD).merge | sed -e 's@refs/heads/@refs/for/@'`; }; f"
```
