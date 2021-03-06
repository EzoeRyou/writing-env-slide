# 技術書の執筆環境


# 自己紹介

+ 江添亮
+ ドワンゴ
+ C++標準化委員会委員
+ <https://github.com/EzoeRyou>

# 環境

+ 雇用されてる会社に出版社がある
+ 編集者が隣の席に座っている
+ 会社から本を書いてくれと言われている

# 過去の本

アスキードワンゴより出版

+ C++11/14コア言語
+ Bjarne StroustrupのPPPUCの翻訳の監修

# 最初の本

+ C++11のコア言語を解説する本
+ 後でC++14を加筆
+ 単一のXHTMLファイルを手書き
+ XHTMLの未来をあの頃は信じていた

# 想定していた利点
+ XMLとしてバリデートできる
+ CSSでスタイルを変更できる
+ JavaScriptでスクリプト処理もできる

# 現実

+ XHTML手書きは辛い
+ 些細な文法ミスでエラー
+ 意味的に間違っているのにマークアップに問題はないため発見できなかったエラー
+ そして何より

# 巨大ファイル

+ 1MBを超えるファイルサイズ
+ vimのような優秀なテキストエディターが必要
+ 1MBを超えるとGitHubのWebページ上で編集できない
+ 1MBを超えるとPRがなくなった

# 編集者を困らせる

+ 「これソースないんですか？」
+ 「え、これがソース」
+ 「仕方ないなぁ、sedで加工しました」

# 教訓

ソースコードは分割しよう

# 監修

+ アスキードワンゴから出版された
+ C++によるプログラミングの原則と実践
+ Programming Principles and Practice Using C++
+ Bjarne Stroustrup著

翻訳の監修をした

# Bjarne Stroustrup

+ C++の作者
+ 最初の実装者


# そびえ立つクソ

# 無駄に冗長

あまりの長さにC++界隈では

「人を殴り殺せる鈍器本」

と呼ばれている

# 難解

+ 人間が読める文章量は有限である
+ 簡潔に越したことはない

# テスト？

なにそれ美味しいの？

+ サンプルコードの数割がコンパイルエラー
+ しかも大半はtypo

お粗末極まりない。

# 経緯

+ もともとC++11用に2009年ごろに書かれた
+ C++14対応をするために全面的に手で修正した
+ サンプルコードに対する自動的なテストが書かれていない


# 間違いの数々

+ C++の正規表現はUnicodeをサポートしている
+ localeで中国語やマラヤーラム文字をサポートできる
+ 暗黙の型変換の使い過ぎによる間違い
+ 規格の破壊的変更の巻き添え

# 1文字は1バイト

> テキストファイルの最初の4バイトは4文字である。

# 教訓

>+ 文章は簡潔に書け
>+ サンプルコードは自動でテストしろ
>+ C++は完全に理解しろ

# 本題

執筆環境

# 大まかな流れ

1. markdownで書く
1. テスト
1. pandocでフォーマット変換
1. tex/html
1. 編集者の職人作業
1. 製本

# markdown

+ Aaron Swartzの遺産
+ あまり好きじゃない
+ 必要な機能はある。

# Aaron Swartz

+ (1986-11-08 - 2013-01-11)
+ markdownを考案
+ 論文を自由にするために尽力した偉人
+ 論文を不自由にしたい極悪人どもによって自殺に追い込まれる
+ ゲリラ・オープン・アクセス・マニフェストを読め

# テスト

+ 簡潔な日本語のテスト
+ サンプルコードのテスト

# 簡潔な日本語

textlint

+ 日本語を形態素解析して文法判断
+ わかりにくい文章を発見できる
+ 偽陽性多し
+ ないよりマシ

# サンプルコード

C++用を自作

+ サンプルコードを抽出
+ コンパイル
+ エラーメッセージを表示


# pandoc

+ 多くの入力フォーマットをサポート
+ 多くの出力フォーマットをサポート
+ このスライドもpandocで出力した

# html

+ 最も自由ソフトウェアによって実装されている
+ 極めて移植性のある組版用フォーマット

# tex

+ 極めて醜悪で時代遅れの組版システム
+ 残念ながら代替品がない
+ texかInDesignか好きな方を選べ

# 編集者の職人作業

+ 私の仕事ではない
+ 商用本としての体裁を整えるには編集者の手作業が必要
+ texだろうがInDesignだろうが変わらない

# 製本

+ 私の仕事ではない

# 流通
 
+ GitHubに集金方法がほしい

# ファイル分割

+ 本のソースコードは分割したい
+ pandocは入力ファイルを分割できる

# フォーマット変換

手作業で行うのは面倒

1. markdownが1つでも更新されたら
1. テストを実行
1. pandocを実行
1. htmlやtexを生成

しかし、どこかで見たような問題

# ビルドシステム

プログラマーは解決済み

+ GNU Makeを使用

# 編集

手作業で行うのは面倒

+ 履歴
+ 共同編集
+ 修正差分
+ \[最終稿\]\[差し戻し修正済み\]\[2017-02-05\]新しい技術書(3).tar.xz

しかし、どこかで見たような問題

# DVCS

プログラマーは解決済み

+ git
+ Github

# 技術書を<br>取り巻く<br>環境

# 読む権利

本の貸し借りは違法となったディストピア小説

<https://www.gnu.org/philosophy/right-to-read.en.html>

Richard Stallman著

# 契約

+ 著作権は出版社が作者から権利を奪い取るために存在する
+ 出版社は不自由な契約を強いる

# 不自由な契約

+ 作者は契約期間中、著作権を排他的、独占的に出版社に代行管理させる
+ 作者は著作権者であるにもかかわらず自ら著作権を行使できなくなる
+ 本は不自由になる
+ この慣習はあまりに強すぎる
+ 破壊的革新が起きない限り慣習は変わらない

# 本の自由

なぜ技術書の自由が重要なのか

+ 紙書籍市場はいずれ崩壊する
+ 電子書籍市場には不自由なフォーマットとデバイスが蔓延する
+ 我々は読む権利を失う

# 対策

+ 本をコピーレフトなライセンスで公開させる
+ 誰が著作権を持とうが関係ない状態にする
+ 独自ライセンスではなく既存の有名なライセンスが使いやすい
+ GFDL, CC-BY-SA, GPLv3
+ 拒否する出版社とは契約しない


# 技術書の内容

+ プロプライエタリな技術を解説する価値はない
+ プロプライエタリな技術はすぐに価値がなくなる
+ 価値のない技術の技術書にも価値はない。
+ 時間、労力、金の無駄である

# 金の話

+ 現在、技術書は儲からない
+ プロがいなくなる
+ 平均的な技術書の質が下がる
+ 技術書の量が減る

# 非商業主義

適切な市場がないと本はどうなるか

+ 超高価
+ 道楽
+ スポンサー

# 対策

どうにもならない

時代の流れに抗うことはできない
