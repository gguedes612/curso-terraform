output "public_ip_address" {
    value = azurerm_public_ip.public_ip_minecraft_server.ip_address
    description = "IP publico para a interface da Maquina Virtual"
}

output "dns_name_server" {
    value = azurerm_dns_zone.dns_minecraft_server.name_servers
    description = "Servidores DNS Azure"
}

output "dominio_servidor" {
    value = azurerm_dns_a_record.dns_registro_minecraft_server.fqdn
    description = "Dominio para entrar no servidor"
}