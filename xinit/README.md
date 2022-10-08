# xinit

Configs for setting up window managers and desktop environments using `xinit`
and `~/.xinitrc`. Each supported environment has its own `.xinitrc` stub.

There are other config stubs here as well:
- `desktop` sets up my current preferred complete desktop setup
- `feh` sets up a desktop wallpaper using `feh` and `~/.fehbg`
- `noscreensaver` disables screen blanking and screensavers using `xset`

For the `desktop` config, be sure to read the stub file because it lets you
know what you need to have installed.

To install, simply `cat` together the components you want into the `~/.xinitrc`
file, starting with one of the `skeleton.linux` or `skeleton.freebsd` files and
ending with a desktop environment file.

For instance, to install a complete i3 environment:

```
cat skeleton.linux noscreensaver desktop feh i3 > ~/.xinitrc
```

Note for new stub files that go in the middle, it looks much better when you
leave an empty line at the end.
