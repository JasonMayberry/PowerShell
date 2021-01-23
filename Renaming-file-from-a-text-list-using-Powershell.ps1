
Write-Output 'The Rename-Item cmdlet changes the name of a specified item.'
Write-Output 'This cmdlet does not affect the content of the item being renamed.'
Write-Output 'You cant use Rename-Item to move an item, such as by specifying a path together with the new name.'
Write-Output 'To move and rename an item, use the Move-Item cmdlet.'
Write-Output ''
Write-Output 'Example: '
Write-Output 'Rename-Item -Path "c:\logfiles\daily_file.txt" -NewName "monday_file.txt"'
Write-Output ''
# Using a here-string:
Write-Host @'
Positional parameters in a .ps1 file works great also.
Example: 
Rename-Item "curent file name.txt" "new file name.txt"
Rename-Item "curent file name.txt" "new file name.txt"
Rename-Item "curent file name.txt" "new file name.txt"
Rename-Item "curent file name.txt" "new file name.txt"
Rename-Item "curent file name.txt" "new file name.txt"
'@
Write-Host @'
In VS Code you can easaly edit all file names at once by selecting lines, then hit Shift+Alt+I.
When you selected more than 2 lines, selected lines count will be displayed in status bar.
'@
