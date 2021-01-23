
Write-Output ""
Write-Output "This Script will rename all files and or folders in a Directory"
Write-Output "Press Ctrl+c to Abort"
Write-Output ""
[string]$OLD_FILE_NAME_PART = Read-Host 'Enter the old file name part to be replaced'
[string]$REPLACEMENT_FILE_NAME_PART = Read-Host 'Enter the new file name part to replace the old part with. (Leave blank to delete old part)'

Get-ChildItem | Rename-Item -NewName {$_.name -replace "$OLD_FILE_NAME_PART","$REPLACEMENT_FILE_NAME_PART"}
