# -*- coding: utf-8 -*-
# Makefile を作成する用のライブラリ。require すると下記で使用しているdir_config等のメソッドが使えるようになる
require 'mkmf'

# ユーザにライブラリのヘッダファイル及び共有ライブラリファイルの探索パスを指定するためのコマンドラインオプションを定義
dir_config('qrencode')

if have_library('qrencode')
  create_makefile('qrencode')
end
