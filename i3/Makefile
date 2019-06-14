CFGDIR		?= $(HOME)/.config/i3
TERMINAL	?= i3-sensible-terminal
OS		!= uname -s
PROFILE		?= $(OS)

all: $(CFGDIR) bkup install term $(PROFILE)

install:
	install config $(CFGDIR)/config

$(CFGDIR):
	mkdir -p $(CFGDIR)

bkup:
	if [ -f $(CFGDIR)/config ]; then mv $(CFGDIR)/config $(CFGDIR)/_config; fi

term:
	sed -i -e 's/TERMINAL/$(TERMINAL)/' $(CFGDIR)/config

FreeBSD: freebsd
freebsd:
	sed -i '' -e 's/xxxxxx/c02000/' $(CFGDIR)/config
	sed -i '' -e 's/yyyyyy/c02000/' $(CFGDIR)/config

OpenBSD: openbsd
openbsd:
	sed -i -e 's/xxxxxx/cc9900/' $(CFGDIR)/config
	sed -i -e 's/yyyyyy/cc9900/' $(CFGDIR)/config

Linux: archlinux
arch: archlinux
archlinux:
	sed -i -e 's/xxxxxx/1793d1/' $(CFGDIR)/config
	sed -i -e 's/yyyyyy/1793d1/' $(CFGDIR)/config

opensuse: suse
suse:
	sed -i '' -e 's/xxxxxx/669900/' $(CFGDIR)/config
	sed -i '' -e 's/yyyyyy/669900/' $(CFGDIR)/config

.PHONY: install bkup term

