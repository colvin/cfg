CFGDIR		?= $(HOME)/.config/i3
TERMINAL	?= i3-sensible-terminal
OS		!= uname -s
PROFILE		?= $(OS)
FONT		?= Droid Sans Mono

# In FreeBSD, 'sed -i' requires an argument.
ifeq ($(PROFILE),FreeBSD)
SED_MINUS_I = -i ''
else
SED_MINUS_I = -i
endif

ifeq ($(PROFILE),FreeBSD)
COLOR ?= c02000
else ifeq ($(PROFILE),OpenBSD)
COLOR ?= cc9900
else ifeq ($(PROFILE),OpenSuSE)
COLOR ?= 669900
else
# Default is Arch Linux
COLOR ?= 1793d1
endif

all: $(CFGDIR) install

$(CFGDIR):
	mkdir -p $(CFGDIR)

install:
	install -b config $(CFGDIR)/config
	sed $(SED_MINUS_I) \
		-e 's/TERMINAL/$(TERMINAL)/g' \
		-e 's/FONT/$(FONT)/g' \
		-e 's/COLOR/$(COLOR)/g' \
		$(CFGDIR)/config
