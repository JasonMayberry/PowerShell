
# Opens all files in a folder with VS Code
$folder = Get-ChildItem; foreach ($file in $folder) { Code $file }

