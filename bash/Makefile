OS		!= uname -s

ETC		= /etc
HOME		= /home

.if ($(OS) == FreeBSD) || ($(OS) == DragonFly)
ETC		= /usr/local/etc
.endif

RC		= $(ETC)/bash.colvin

all: root colvin

rc:
	install -o root -g wheel -m 664 bash.colvin $(ETC)/

root: rc
	echo '[[ -z "$$colvinrc" ]] && . $(RC)' > /root/.bashrc

colvin: rc
	echo '[[ -z "$$colvinrc" ]] && . $(RC)' > $(HOME)/colvin/.bashrc

