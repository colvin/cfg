# i3

Configs and setup for i3 and [i3status-rust](https://github.com/greshake/i3status-rust).

The `config` needs to be installed with `make` in order to replace several
values. It is not usable as-is. The `COLOR`, `TERMINAL`, and `FONT` variables
can be set explicitly in the `make` invocation (`COLOR` is an rgb hex code with
no leading `#`, eg `ff7700`), or you can use the defaults. The `COLOR` variable
is additionally controlled by the operating system in use, where Linux,
FreeBSD, and OpenBSD all have their own defined colors. This is controlled by
the `PROFILE` variable, which can be explicitly set. In particular `PROFILE`
can be used to set a specific distribution, since Linux always uses Arch Linux
colors.  The currently recognized `PROFILE` values are:

- `Linux`
- `FreeBSD`
- `OpenBSD`
- `OpenSuSE`

```
make FONT="Liberation Sans" TERMINAL=mate-terminal PROFILE=OpenSuSE
```

The defaults are:
- `FONT`: `Droid Sans Mono`
- `TERMINAL`: `i3-sensible-terminal`

## i3status-rust

Install the appropriate `i3status-rust-*.toml` to
`~/.config/i3status-rust/config`. You probably want to tailor it a bit, since
it may include network interface names etc that don't work for the local
system.
