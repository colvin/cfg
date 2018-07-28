PACKDIR		= ~/.vim/pack/bundle

PACK_START	= \
	IrishPrime/WhiteWash.vim.git\
	ctrlpvim/ctrlp.vim.git\
	tpope/vim-abolish\
	tpope/vim-db\
	tpope/vim-dispatch\
	tpope/vim-fugitive\
	tpope/vim-repeat\
	tpope/vim-surround\
	tpope/vim-unimpaired\
	vim-airline/vim-airline-themes.git\
	vim-airline/vim-airline.git\
	w0rp/ale.git

PACK_OPT	=
#	bling/vim-bufferline.git
#	ryanoasis/vim-devicons.git
#	airblade/vim-gitgutter.git
#	mbbill/undotree.git
#	nathanaelkane/vim-indent-guides
#	majutsushi/tagbar

install:
	test -e ~/.vimrc && mv ~/.vimrc ~/.vimrc.bk || true
	install vimrc ~/.vimrc
	mkdir -p ~/.vim/after/ftplugin
	mkdir -p ~/.vim/template
	install after/* ~/.vim/after/ftplugin
	install template/* ~/.vim/template
	install -b pylintrc ~/.pylintrc

##
#	packages
##

pack: have-git pack-dir pack-start pack-opt

have-git:
	@which git

pack-dir:
	mkdir -p $(PACKDIR)/start
	mkdir -p $(PACKDIR)/opt

pack-start: $(PACK_START)

pack-opt: $(PACK_OPT)

.for startpkg in $(PACK_START)
$(startpkg):
	#cd $(PACKDIR)/start && git clone https://github.com/$(startpkg)
	@echo "----> $(startpkg:T:R)"
	@test -d $(PACKDIR)/start/$(startpkg:T:R) &&\
		( cd $(PACKDIR)/start/$(startpkg:T:R) && git pull ) ||\
		( cd $(PACKDIR)/start && git clone https://github.com/$(startpkg) )
.endfor

.for optpkg in $(PACK_OPT)
$(optpkg):
	@echo "----> $(optpkg:T:R)"
	@test -d $(PACKDIR)/opt/$(optpkg:T:R) &&\
		( cd $(PACKDIR)/opt/$(optpkg:T:R) && git pull ) ||\
		( cd $(PACKDIR)/opt && git clone https://github.com/$(optpkg) )
.endfor


help:
	@echo "TARGETS:"
	@echo "  install:       write ~/.vimrc, backing up first if exists"
	@echo "  pack:		pack-dir pack-start pack-opt"
	@echo "  pack-start:	clone git repos into $(PACKDIR)/start/"
	@echo "  pack-opt:	clone git repos into $(PACKDIR)/opt/"

.PHONY: help
