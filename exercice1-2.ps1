# Récupère tous les processus svchost et affiche leur Id et leur nom
Get-Process svchost | Select-Object Id, ProcessName
