# Makefile for WinxedGtk

# winxed must be accesible in the PATH

default: build

#-----------------------------------------------------------------------

build: build/WinxedGtk.pbc

build/WinxedGtk.pbc: pir/WinxedGtk.pir
	winxed setup.winxed build

pir/WinxedGtk.pir: src/WinxedGtk.winxed
	winxed -c -o pir/WinxedGtk.pir src/WinxedGtk.winxed

#-----------------------------------------------------------------------

install: build/WinxedGtk.pbc
	winxed setup.winxed install

uninstall: build/WinxedGtk.pbc
	winxed setup.winxed uninstall

#-----------------------------------------------------------------------

clean:
	winxed setup.winxed clean
	rm -rf pir/WinxedGtk.pir

# End
