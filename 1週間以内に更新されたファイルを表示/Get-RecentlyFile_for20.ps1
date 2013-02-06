param(
    [string]
    $pattern=$null,
    [datetime]
    $date=(Get-Date).AddDays(-7)
)

$inputPattern = Read-Host "検索したいパターン（正規表現）を入力するといいよ"

if(($inputPattern -eq $null) -or ($inputPattern -eq "")){
    $pattern = $inputPattern
}

$inputFromDate = Read-Host "検索の起点にしたい日付を入力するといいよ(yyyy/m/d)"
if(($inputFromDate -eq $null) -or ($inputFromDate -eq "")){
    #入力がなければデフォルトのままで。
    Write-Host ("デフォルトの日付を使うよ {0}" -f $date.ToString("yyyy/M/d"))
}else{
    if($inputFromDate -as [datetime]){
        $date = $inputFromDate
    }else{
        Write-Host ("日付データが不正だからデフォルトの日付を使うよ {0}" -f $date.ToString("yyyy/M/d"))
    }
}

#Get-ChildItem | ?{$_.LastWriteTime -ge $date} | ?{$_.Name -Match $pattern} | sort Name | Format-Table Name,LastWriteTime 

Get-ChildItem | ?{$_.LastWriteTime -ge $date} | ?{$_.Name -Match $pattern} | sort Name | Out-GridView


