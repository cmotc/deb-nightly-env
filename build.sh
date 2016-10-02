#! /bin/sh
export TWD=$(pwd)
export PKDIR=$(ls -d */)
export CFLAGS="$CFLAGS -fPIC"
export DEB_BUILD_MAINT_OPTIONS=hardening=+all
export DEB_BUILD_OPTIONS="$DEB_BUILD_MAINT_OPTIONS"
for i in $PKDIR; do
	cd $i 
	debuild -us -uc
	cd $TWD
done
