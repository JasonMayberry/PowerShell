
$file_type = Read-Host 'Enter the file type that you would like to target. Example: .jpg .png .m4v .mp4 .pdf'
$fileNameEnding = Read-Host 'Add a file basename ending before its file type extension.'

Get-ChildItem *$file_type | ForEach-Object { Rename-Item -Path $_.Name -NewName "$($_.Basename)$fileNameEnding$file_type" }
