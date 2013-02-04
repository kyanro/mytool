param(
    [string]
    $pattern=$null,
    [datetime]
    $date=(Get-Date).AddDays(-7)
)


Get-ChildItem | ? LastWriteTime -ge $date | ? Name -Match $pattern | sort Name | Format-Table Name,LastWriteTime 

