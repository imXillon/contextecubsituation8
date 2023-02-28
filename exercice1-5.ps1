# Définit la fonction InfoProcessus
function InfoProcessus($processName) {
    # Récupère les processus selon le filtre choisi et affiche leur ID, nom et description
    Get-Process | Where-Object { $_.ProcessName -match $processName } | Select-Object Id, ProcessName, Description | Format-Table -AutoSize
}

# Appelle la fonction avec le nom du processus "power"
InfoProcessus "power"
