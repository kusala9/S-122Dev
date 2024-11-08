DEST=
SRC=

all:	pull local

pull:
	git pull
	
local:
	DT=`date`
	cd src/Documents/1.2.1/PS && metanorma compile document.adoc -o local
	git commit -a -m 'Build $(DT)'
	git push

tst:
	DT=`date`
	echo $(DT)
