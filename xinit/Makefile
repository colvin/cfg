XINITRC		= ~/.xinitrc

OS		!= uname -s
.if $(OS) == FreeBSD
SKEL		= skeleton.freebsd
.else
SKEL		= skeleton.linux
.endif

.if defined(FEH)
FEH		= feh
.endif

.if defined(SCREENSAVER)
NOSCREENSAVER	=
.else
NOSCREENSAVER	= noscreensaver
.endif

WMS		= \
	twm\
	i3\
	antiwm\
	awesome\
	bspwm\
	cwm\
	echinus\
	gnome2\
	ion\
	kde\
	lumina\
	mate\
	oroborus\
	ratpoison

all: help

skel:
	install $(SKEL) $(XINITRC)

feh: skel
	cat feh >> $(XINITRC)

noscreensaver: skel
	cat noscreensaver >> $(XINITRC)

.for wm in $(WMS)
$(wm): skel $(NOSCREENSAVER) $(FEH)
	cat $(wm) >> $(XINITRC)
.endfor

help:
	@echo "make <wm> [-DFEH] [-DNOSCREENSAVER]"
