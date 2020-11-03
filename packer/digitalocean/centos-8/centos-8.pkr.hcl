locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }


source "digitalocean" "docker_installed" {
  api_token    = ""
  image        = "${var.image}"
  region       = "${var.region}"
  size         = "${var.size}"
  ssh_username = "root"
}


build {
  sources = ["source.digitalocean.docker_installed"]


  provisioner "shell" {
    inline = ["dnf install -y python3"]
}

  provisioner "ansible" {
   playbook_file = "ansible-centos/main.yaml"
  }
}
