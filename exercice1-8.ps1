# Demande à l'utilisateur s'il souhaite la list des services démarrés ou arrêtés
$etat = Read-Host "Souhaitez-vous la liste des services démarrés ou arrêtés (D/A)"
#Créer des conditions en fonction du choix de l'utilisateur
if ($etat -eq "D") {
     $services = Get-Service | Where-Object {$_.status -like "running"} | Select-Object Name,DisplayName,Description,Status
}
elseif ($etat -eq "A") {
     $services = Get-Service | Where-Object {$_.status -like "stopped"} | Select-Object Name,DisplayName,Description,Status
}

    


# Exporter dans un fichier csv
$services | Export-Csv -Path "C:\sauvegarde\services.csv"
$services | Format-Table -AutoSize
