output "public_ip_address" {
    value = module.vm-linux.public_ip_address
    description = "IP publico para a interface da Maquina Virtual"
}