Write-Output 'Edit this line to your needs. Set the range at the begining. Then add a custom string at the end where $_ is each range number.'
Write-Output " "
Write-Output '1..9 | ForEach-Object {New-Item -ItemType Directory "Season - 0$_"}'
Write-Output " "
