packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}
source "amazon-ebs" "amazon-linux" {
  ami_name      = var.ami_name
  instance_type = var.instance_type
  region        = var.region
  source_ami    = var.source_ami
  ami_users     = var.ami_users
  ami_regions   = var.ami_regions
  ssh_username  = var.ssh_username
}

build {
  name = "ec2-user-packer-build"
  sources = [
    "source.amazon-ebs.amazon-linux"
  ]

}

    