Get-ChildItem | Select-Object -Property PSIsContainer,Mode,LastWriteTime,FullName,Name,BaseName,Extension | Export-CSV "ls_with_Select-Object.csv"
