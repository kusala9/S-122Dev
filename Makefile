DEST=
SRC=

all:	pull

pull:
	git pull
	
local:
	cd src/Documents/1.2.1/PS && metanorma compile document.adoc -o local

