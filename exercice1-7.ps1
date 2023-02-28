# Affichage des services démarrés
$services = Get-Service | Where-Object {$_.status -like "running"}
# Affichage par tableau
$services | Format-Table Name, DisplayName, Status
# Exporter dans un fichier csv
$services | Out-File  "services.csv"