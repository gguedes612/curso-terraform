output "public_ip_address" {
    value = azurerm_public_ip.public_ip_minecraft_server.ip_address
    description = "IP publico para a interface da Maquina Virtual"
}