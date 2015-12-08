#!/bin/bash

set -o verbose
wget ftp://invisible-island.net/ncurses/ncurses.tar.gz &&
tar xf ncurses.tar.gz &&
rm ncurses.tar.gz

#cd curl
#./buildconf
#./configure --prefix=$PWD/../out --quiet &&
#make clean --silent &&
#make --silent &&
#make test --silent &&
#make install --silent
#cd ..

cd ncurses-5.9
./configure --prefix=$PWD/../out --quiet &&
make clean --silent &&
make --silent &&
make install --silent
cd ..

cd libtorrent
./autogen.sh &&
./configure --prefix=$PWD/../out --quiet &&
make clean --silent &&
make --silent &&
make install --silent
cd ..

cd rtorrent
./autogen.sh &&
./configure CPPFLAGS="-I$PWD/../out/include -I$PWD/../out/include/ncurses" LDFLAGS="-L$PWD/../out/lib" libtorrent_CFLAGS="-I$PWD/../out/include" libtorrent_LIBS="-L$PWD/../out/lib -ltorrent" --prefix=$PWD/../out &&
make clean --silent &&
make --silent &&
make install --silent
cd ..

echo "==DONE=="
