while ($true) {
    $EthernetAdapter = Get-NetAdapter | Where-Object {$_.Name -eq "Ethernet"} # Nome da conexão
    Start-Sleep -s 30 # Tempo para verificar novamente o status da conexão em segundos
    if ($EthernetAdapter.Status -ne "Up") {
        Enable-NetAdapter -Name $EthernetAdapter.Name -Confirm:$false
    }
}