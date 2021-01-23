$prefix = Read-Host 'What would you like your file name prefix to be?'
Get-ChildItem | Rename-Item -NewName { $prefix + $_.Name }
