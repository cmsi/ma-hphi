# ma-hphi

## How to prepare source files for phi package

1. ソースファイルの準備 (ホスト上で)

        cd $HOME/vagrant/data/src
        wget https://github.com/QLMS/HPhi/releases/download/v2.0.1/HPhi-2.0.1.tar.gz
	tar zxvf HPhi-2.0.1.tar.gz
	mv -f HPhi-2.0.1 hphi_2.0.1
	tar zcvf hphi_2.0.1.orig.tar.gz hphi_2.0.1
