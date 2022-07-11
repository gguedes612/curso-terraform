output "public_ip_address" {
  value       = module.vm-linux.public_ip_address
  description = "IP publico para a interface da Maquina Virtual"
}

output "dns_name_server" {
  value       = module.vm-linux.dns_name_server
  description = "Servidores DNS Azure"
}

output "dominio_servidor" {
  value       = module.vm-linux.dominio_servidor
  description = "Dominio para entrar no servidor"
}
