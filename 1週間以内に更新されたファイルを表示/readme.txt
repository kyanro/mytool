なにもないのもあれなので、powershellを使ったスクリプトを一つ。



.\Get-RecentlyFile.ps2 -pattern "修羅場" -date "2012-02-05"
みたいに使う。

パターンを省略すると実行したフォルダ直下にある、1週間以内に更新されたファイル名が全部表示される
.\Get-RecentlyFile.ps2

patternには正規表現が使える
.\Get-RecentlyFile.ps1 -pattern "(修羅場|しゅらば)"

"yyyy-mm-dd"で日付を入力するとその日以降のファイルが全部表示される。
日付形式はpowershellでキャストできる形式ならだいたいなんでも通る。
.\Get-RecentlyFile.ps2 -date "2012-02-05"



・・・windowsの検索で大体できるよね！
こっちだと正規表現が使えるくらい？

まぁとりあえずgithub使ってみたかったということで。




あ、powershellはwindows7以降なら標準で入ってるけど、最初はスクリプトが動かないようになってるので、

Windows PowerShell ISE　か、Windows PowerShell あたりを管理者権限で実行して

Set-ExecutionPolicy RemoteSigned

あたりを実行しないとだめだったはず。

スクリプトの実行はシェルからやってください。