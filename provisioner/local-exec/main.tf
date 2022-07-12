resource "aws_instance" "server" {
  
  provisioner "local-exec" {
    command = "echo $FOO $BAR $BAZ >> env_vars.txt"

    environment = {
    FOO = "bar"
    BAR = 1
    VAZ = "true"
     }
  }
  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }
}