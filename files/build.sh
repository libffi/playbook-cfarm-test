#!/bin/sh

set -x

BINUTILS_SOURCE=binutils-2.33.1
GCC_SOURCE=gcc-9.2.0
AUTOCONF_SOURCE=autoconf-2.69
AUTOMAKE_SOURCE=automake-1.16
LIBTOOL_SOURCE=libtool-2.4.6
MAKE_SOURCE=make-4.2

export PATH=$HOME/usr/bin:$PATH

cd $HOME/build
tar xvf $HOME/source/${BINUTILS_SOURCE}.tar.gz
cd ${BINUTILS_SOURCE}
./configure --prefix=$HOME/usr
make
make install

cd $HOME/build
tar xvf $HOME/source/${GCC_SOURCE}.tar.gz
cd ${GCC_SOURCE}
./configure --prefix=$HOME/usr
make
make install

cd $HOME/build
tar xvf $HOME/source/${MAKE_SOURCE}.tar.gz
cd ${MAKE_SOURCE}
./configure --prefix=$HOME/usr
make
make install

cd $HOME/build
tar xvf $HOME/source/${AUTOCONF_SOURCE}.tar.gz
cd ${AUTOCONF_SOURCE}
./configure --prefix=$HOME/usr
make
make install

cd $HOME/build
tar xvf $HOME/source/${AUTOMAKE_SOURCE}.tar.gz
cd ${AUTOMAKE_SOURCE}
./configure --prefix=$HOME/usr
make
make install

cd $HOME/build
tar xvf $HOME/source/${LIBTOOL_SOURCE}.tar.gz
cd ${LIBTOOL_SOURCE}
./configure --prefix=$HOME/usr
make
make install


