resource "aws_instance" "server" {


  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
        "apt install git",
        "git clone www.googgle.com"
    ]
  }
}
