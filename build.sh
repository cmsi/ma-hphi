#!/bin/sh
. $(dirname $0)/path.sh
test -z $BUILD_DIR && exit 127

mkdir -p $TARGET_DIR
cd $BUILD_DIR
ARCH=$(dpkg --print-architecture)
case ${ARCH} in
    amd64)
        dpkg-buildpackage -us -uc
        awk '$3!="debug" {print}' ../${PACKAGE}_${VERSION}_${ARCH}.changes > $TARGET_DIR/${PACKAGE}_${VERSION}_${ARCH}.changes
        mv -f ../${PACKAGE}*_${VERSION_BASE}*.buildinfo ../${PACKAGE}*_${VERSION_BASE}*.deb $TARGET_DIR
        mv -f ../${PACKAGE}*_${VERSION_BASE}*.dsc ../${PACKAGE}*_${VERSION_BASE}*.debian.tar.* $TARGET_DIR
        cp -f ../${PACKAGE}*_${VERSION_BASE}*.orig.tar.gz $TARGET_DIR
        ;;
    *)
        dpkg-buildpackage -B -us -uc
        awk '$3!="debug" {print}' ../${PACKAGE}_${VERSION}_${ARCH}.changes > $TARGET_DIR/${PACKAGE}_${VERSION}_${ARCH}.changes
        mv -f ../${PACKAGE}*_${VERSION_BASE}*.buildinfo ../${PACKAGE}*_$VERSION_BASE*.deb $TARGET_DIR
        ;;
esac
