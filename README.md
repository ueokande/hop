Hop
===

Hop is a command to navigates to your favorite and frequently used directory.
Change the current directory with a short name.

![Screenshot](screenshot.gif)

Install and settings
--------------------

Clone cds repository to a directory `$HOME/.hop`:

```sh
git clone https://github.com/ueokande/hop $HOME/.hop
```

Update hop entries in your `.bash_profile`, `.zprofile`, or `.profile`:

```sh
# Register your workspaces
[ -x $HOME/.hop/hop-update.sh ] && $HOME/.hop/hop-update.sh \
  ~/go/src/github.com/ueokande \
  ~/workspace \
  /usr/src
```

The entries are registered into `hop-update.sh` in simple format.
You can register additional entries yourself:

```sh
cat >>$HOME/.hoprc <<EOF
Asia=/usr/share/zoneinfo/Asia
Africa=/usr/share/zoneinfo/Africa
EOF
```

Note that you need to register them after `hop-update.sh` invocation, since
`hop-update.sh` truncates `.hoprc`.

Load a profile in your `.profile`:

```sh
[ -r $HOME/.hop/profile ] && source $HOME/.hop/profile
```

For bash users, load completion file:

```sh
[ -r $HOME/.hop/bash-completion ] && source $HOME/.hop/bash-completion
```

License
-------

MIT
