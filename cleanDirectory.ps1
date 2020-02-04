$path = $args[0]
$limit = (Get-Date).AddDays(-$args[1])

Write-Host "Removing files/folders older than: " $limit
Get-ChildItem –Path $path -Recurse | Where-Object {($_.LastWriteTime -lt $limit)} | Remove-Item
