CFGDIR		?= $(HOME)
OS		!= uname -s
PROFILE		?= $(OS)

all: install $(PROFILE)

install:
	install tmux.conf $(CFGDIR)/.tmux.conf

FreeBSD: freebsd
freebsd:
	sed -i -e 's;COLOR;red;' $(CFGDIR)/.tmux.conf

OpenBSD: openbsd
openbsd:
	sed -i -e 's;COLOR;yellow;' $(CFGDIR)/.tmux.conf

Linux: arch
arch:
	sed -i -e 's;COLOR;blue;' $(CFGDIR)/.tmux.conf

suse: opensuse
opensuse:
	sed -i -e 's;COLOR;green;' $(CFGDIR)/.tmux.conf

