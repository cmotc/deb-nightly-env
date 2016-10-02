#! /bin/sh

NAME="i2pd_"
VERS="2.7.0"
if [ -n "$BASH_VERSION" ]; then
        TOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
else
        TOME=$( cd "$( dirname "$0" )" && pwd )
fi

cd $TOME
#export WITH_UPNP="ON"
#cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_WITH_UPNP="ON" -DCMAKE_WITH_HARDENING="ON"
tar -czvf $TOME/../$NAME$VERS.orig.tar.gz .
debuild -us -uc
