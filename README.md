# ma-hphi

## How to prepare source files for phi package

1. ソースファイルの準備 (ホスト上で)

        VERSION=3.0.0
        cd $HOME/vagrant/data/src
        wget https://github.com/issp-center-dev/HPhi/releases/download/v$VERSION/HPhi-$VERSION.tar.gz
        tar zxvf HPhi-$VERSION.tar.gz
        mv -f HPhi-$VERSION hphi_$VERSION
        tar zcvf hphi_$VERSION.orig.tar.gz hphi_$VERSION
