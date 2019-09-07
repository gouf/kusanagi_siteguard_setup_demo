# 概要

さくらのクラウド上で [KUSANAGI](https://kusanagi.tokyo/cloud/kusanagi-for-sakuracloud/) (WordPress) 環境を立ち上げ、追加で [SiteGuard](https://manual.sakura.ad.jp/cloud/server/os-packages/siteguard-firewall.html) のセットアップを行う


# セットアップについて

大まかな流れとしては:

* KUSANAGI 環境をさくらのクラウドで立ち上げる (アーカイブ, スタートアップスクリプト)
* SSH でサーバにアクセスする (任意)
* セットアップに必要なコマンド群を実行する

# KUSANAGI 環境の立ち上げ

さくらのクラウドのコントロールパネルから操作していく ( マニュアル: [コントロールパネル](https://manual.sakura.ad.jp/cloud/controlpanel/index.html) )

[サーバの作成・削除](https://manual.sakura.ad.jp/cloud/server/create-delete.html) 手順に沿って:

* 「アーカイブ選択」から KUSANAGI を選択
* スタートアップスクリプトから KUSANAGI のものを選択する

(**NOTE**: スタートアップスクリプトを使用するので、[通常モード](https://manual.sakura.ad.jp/cloud/server/create-delete.html#create-normal-mode) で操作する)

スタートアップスクリプトを選択すると、今見ているページ上に入力すべき内容が追加されるので、適切な値を設定する


## SSH 接続の設定 (任意)

必要であれば、手元のPC 環境で操作できるよう、 SSH 公開鍵を登録する (マニュアル: [公開鍵認証](https://manual.sakura.ad.jp/cloud/controlpanel/settings/public-key.html?highlight=ssh))


# SiteGuard 連携のための Nginx のソースコードからのインストール

各ファイルは `shell_scripts/` に保存してある

次の `*.sh` 群を実行する

1. `su` (root ユーザに切り替え 要パスワード)
2. `install_dependencies.sh`
3. `install_siteguard.sh`
4. `download_nginx_source.sh`
5. `download_openssl_source.sh`
6. `clone_nginx_extensions.sh`
7. `nginx_configure_options.sh`
8. `make && make install` (Nginx ソースコード ディレクトリ内で実行)
9. `setup_siteguard.sh` (このファイル内容に沿って、実行後の質問に答える)

ファイルをサーバに転送せずとも、コピペ実行で可

(**NOTE**: 万一、実行順序や実行内容に誤りがあるかもしれないので、内容を理解の上、実行すること)
