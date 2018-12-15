SUBDIRS	= $(shell find . -type d -depth 1)

default: all

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: $(SUBDIRS)
