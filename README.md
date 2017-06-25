# ma-hphi

## How to build phi package

1. ソースファイルの準備 (ホスト上で)

        cd $HOME/vagrant/data/src
        wget https://github.com/QLMS/HPhi/releases/download/v2.0.1/HPhi-2.0.1.tar.gz
	tar zxvf HPhi-2.0.1.tar.gz
	mv -f HPhi-2.0.1 hphi_2.0.1
	tar zcvf hphi_2.0.1.orig.tar.gz hphi_2.0.1

2. ビルドディレクトリの準備

        cd $HOME/build
        sh /development/ma-hphi/setup.sh

3. パッケージのビルド

        cd $HOME/build
        sh /development/ma-hphi/build.sh 2>&1 | tee build.log

4. パッケージへの署名

        cd $HOME/build
        debsign hphi_*.changes 

5. リポジトリへの登録

        cd $HOME/build
        sh /development/MateriAppsLive/repos/add_repo.sh hphi_*.changes
