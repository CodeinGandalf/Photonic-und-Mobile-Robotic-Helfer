#!/bin/sh

set -xe

CC="${CXX:-cc}"
PKGS=""
CFLAGS="-Wall -Wextra -std=c11 -pedantic -ggdb"
LIBS=-lm
SRC="main_helfer_photonics_mobile_robotics.c geom.c rezepte.c mechanik.c elektronikAufgaben.c elektronikFormeln.c vector.c brechungsgesetz.c brechungsindex.c hangman.c totalreflektion.c elektromagnetischesSpektrum.c"
# $CC $CFLAGS `pkg-config --cflags $PKGS` -o main $SRC $LIBS `pkg-config --libs $PKGS`
$CC $CFLAGS -o main $SRC $LIBS