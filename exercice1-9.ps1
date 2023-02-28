# Importer les services démarrés depuis le fichier csv
$services = Import-Csv -Path "C:\sauvegarde\services.csv" | Where-Object {$_.Status -eq "Running"}

# Parcourir chaque service et afficher son nom et statut s'il contient le mot "system"
foreach ($service in $services) {
    if ($service.Name -like "*system*") {
        Write-Host $service.Name -ForegroundColor Green -NoNewline

    }
}
