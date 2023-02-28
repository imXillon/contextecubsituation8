# Demande à l'utilisateur quel processus il souhaite filtrer
$processName = Read-Host "Entrez le nom du processus à filtrer (ex : svchost)"

# Récupère les processus selon le filtre choisi et affiche leur ID, nom et description
Get-Process | Where-Object { $_.ProcessName -eq $processName } | Select-Object Id, ProcessName, Description | Format-Table -AutoSize