# Définit la fonction InfoProcessus
function InfoProcessus($processName) {
    # Récupère les processus selon le filtre choisi et affiche leur ID, nom et description
    $Info = Get-Process | Where-Object { $_.ProcessName -match $processName } | Select-Object Id, ProcessName, Description | Format-Table -AutoSize

    # Écrit le résultat dans un fichier texte
    $Info | Out-File -FilePath "sauvegarde.txt"

    # Écrit le résultat dans un fichier csv
    $Info | Export-CSV -Path "sauvegarde.csv"



}
# Appelle la fonction InfoProcessus avec l'expression régulière "power"
InfoProcessus "power"
