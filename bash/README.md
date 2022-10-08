# bash

Bash configuration. The setup is anchored in `/etc/bash.colvin`. The user's
`~/.bashrc` and `~/.bash_profile` just source `/etc/bash.colvin`.

A simple shell script is provided to do the installation, which needs to be
run as root.

```
./install.sh
```

The script installs the user files for `root` and `colvin`, so be sure that
the `colvin` user has already been created. The script is simple enough, so
read what it is doing if you need to execute the procedure for another user
or to do only part of it.
