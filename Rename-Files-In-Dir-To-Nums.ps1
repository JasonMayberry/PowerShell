
Write-Output "Press Ctrl+c to Abort"
Write-Output ""
Write-Output "This Script will rename all files of a specified file type with a zero-padded sequential "
Write-Output "number like 0001.jpg. An optional basename ending before file type can be added like 0001-Jake.jpg"
Write-Output "Enter an integer not including the zero-padded numbers to start the sequential numbering."
[int]$startInt = Read-Host "Example 0 or 1 or 10... etc."

$file_type = Read-Host 'Enter the file type that you would like to target. Example: .jpg .png .m4v .mp4 .pdf'
# $fileNameEnding = Read-Host 'Add a file basename ending before its file type extension.'
$fileNameEnding = Read-Host 'Add an optional basename ending before file type extension. Enter it now or press enter to skip'

Get-ChildItem *$file_type | ForEach-Object{Rename-Item $_ -NewName ("{0:D4}$fileNameEnding$file_type" -f $startInt++)}
