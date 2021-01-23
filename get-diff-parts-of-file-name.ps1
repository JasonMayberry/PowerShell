
$filePath = Read-Host 'Enter the file name and path to see its parts'
Write-Output ""
Write-Output "Extension: $((Get-Item $filePath ).Extension)"
Write-Output "Basename: $((Get-Item $filePath ).Basename)"
Write-Output "Name: $((Get-Item $filePath ).Name)"
Write-Output "DirectoryName: $((Get-Item $filePath ).DirectoryName)"
Write-Output "FullName: $((Get-Item $filePath ).FullName)"
Write-Output ""
Write-Output "Mode: $((Get-Item $filePath ).Mode)"

Write-Host @'
The next part will only run the code inside the IF-block if the item we have is not a directory. 
In this example, the whole block is just a Write-Host command which complains about the lack of a folder.
'@

if ($null -eq $filePath -or ($filePath.Attributes -band [IO.FileAttributes]::Directory) -ne [IO.FileAttributes]::Directory) {
    Write-Output "This is a file."
}

Write-Host @'
The first part of the clause is pretty clear - if we didn't get anything with the Get-ChildItem, 
the variable is $null, and we're going to go into the If block.
'@
