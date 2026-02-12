#!/bin/sh

VIMRC="$HOME/.vimrc"
VIM_HOME="$HOME/.vim"
PACK_DIR="$VIM_HOME/pack/bundle/start"
FT_DIR="$VIM_HOME/after/ftplugin"
AUTOLOAD_DIR="$VIM_HOME/autoload"
COLORS_DIR="$VIM_HOME/colors"
DOC_DIR="$VIM_HOME/doc"
TEMPLATE_DIR="$VIM_HOME/template"

set -eu

function _install() {
	set -x
	mkdir -p $PACK_DIR
	mkdir -p $FT_DIR
	mkdir -p $AUTOLOAD_DIR
	mkdir -p $COLORS_DIR
	mkdir -p $DOC_DIR
	mkdir -p $TEMPLATE_DIR
	install -b vimrc $VIMRC
	install ftplugin/* $FT_DIR/
	install template/* $TEMPLATE_DIR/
	install -b pylintrc $HOME/.pylintrc
	set +x
}

function _pack() {
	for pkg in $(cat packages)
	do
		echo "----> $pkg"
		clean_name=`basename $pkg .git`
		if [ -d $PACK_DIR/$clean_name ]
		then
			( cd $PACK_DIR/$clean_name && git pull )
		else
			( cd $PACK_DIR && git clone https://github.com/$pkg )
		fi
	done

	# special installation process for sonokai
	cp -rv $PACK_DIR/sonokai/autoload/* $AUTOLOAD_DIR/
	cp -rv $PACK_DIR/sonokai/colors/* $COLORS_DIR/
	cp -rv $PACK_DIR/sonokai/doc/* $DOC_DIR/
}

if [ "$#" -eq 0 ]
then
	_install && _pack
else
	while [ "$#" -gt 0 ]
	do
		case "$1" in
			""|core)	_install
					;;
			pack)		_pack
					;;
			*)		echo "bad target: $1"
					exit 1
					;;
		esac
		shift
	done
fi
