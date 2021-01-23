
# Install-Module -Name PSSharedGoods

$folder = Get-ChildItem
foreach($File in $folder) {
$fileMetaProperties = @($(Get-FileMetaData $File | Select-Object -Property Name,Title))
$a = $fileMetaProperties.Name
$b = $fileMetaProperties.Title
Write-Output "Rename-Item `"$a`" `"$b.jpg`"" >> renameWithMetaTitle.ps1
}

