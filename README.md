## mmpkginst　

## ペンタブを利用してペイントマシーンを作成する時の

## アプリケーション　動作試験スクリプト

ペンタブレットを使用して、ペインティグマシーンを作成するときの、試験用の
スクリプトになります。

経緯：
APT版だけで作成する場合とPPA版を利用して作成する場合の試験のために
作り始めました。
インストールはしたけれども、アンインストール方法を忘れたり、
再インストールの方法がわからなくなったりなので、
ひとまず、スクリプトを作成するようにしました。
そのうち、開発版なども実験で使ったので、インストールメモをスクリプト化
したと考えていただいて良いと思います。
スクリプトは、それほど、洗練されていませんので、色々とご指導、ご鞭撻
いただければ、幸いです。
スクリプトの原型は、LinuxBeanの作成者殿のpkginstを利用させていただいております。
試験環境は、主に、LinuxMint19.2のXFCE Editionになります。
一部は、KDE Neon UserEditionを利用しております。



## 動作に必要なアプリケーション
スクリプトを動かすためには、必要なアプリケーションは次のとおりです。
アプリケーショごとに必要なライブラリは、スクリプト内でインストールします。
leafpad, thunar, yad, git,svn, build-essential, nfdupes, ppa-purge



## 使用方法
git clone https://github.com/megamuteki/mmpkginst.git

cd  ./mmpkginst

mmpkginstlocal.desktopをダブルクリックしてください。

または
$bash .mmpkginst.sh



## 主なファイルの説明

（１）mmpkginstlocal.desktop
			起動用のデスクトップファイル
（２）mm_pkginst.sh
			メインの起動スクリプト
（３）00common.fnc
			インストール時に必要なものの関数になります。
（４）00doinct
			インストール作業用のスクリプト
（５）00infotxt.txt
			このスクリプトの簡単な説明
（６）00pkgcatalog.txt
			作業メニューを選択した時のファイル。
			インストール作業やアンインストール作業をした時のアプリケーションリストになります。
（７）00startup
			起動時に読み込むスクリプトで、起動準備スクリプトになります。
（８）01catalogapt.txt
			安定版用のAPTアプリケーションのインストールカタログ
（９）01catalogmoe.txt
			萌化するためのインストールカタログ
（１０）01catalogpen.txt

​			ペンタブを使用するために必要なインストールカタログ
（１１）01catalogppa.txt
​			作成し始めた頃は、PPAだけの予定でしたが、その他のものも入っています。
（１２）01catalogutil.txt

​			作成し始めた頃は、なかったのですが、便利なユーティリティなどのカタログになります。

（１３）ファイル名が[a-z]*　のファイルは、アプリケーションごとにインストールスクリプトになります。

（例）カタログ
○GIMPペイント画像処理アプリ：カタログ名
○BOTH：LinuxMintだけの場合は、Mint。KdeNeonのときは、NEON。両方のときは、BOTHになっています。
○APT:APTの場合は、標準リポジトリから、PPAの場合は、PPAリポジトリから、DEBの時は、DEBパッケージをダウンロードします。SRCの時は、ソースからコンパイルします。CFGは、設定を変更します。
○PhotoShopライクなペイント画像処理：簡単な説明
○gimpapt：インストールスクリプト名



## サンプルの写真

memo:Select from PEN List and Monitor List. 
![Penmap](https://github.com/megamuteki/images/blob/master/mmpkginst/mmpkginst01.png)

