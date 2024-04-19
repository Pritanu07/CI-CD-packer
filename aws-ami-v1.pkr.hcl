# If you have your default VPC available then use it. 

packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "ec2users-aws-ubuntu"
  instance_type = "t4g.micro"
  region        = "us-east-1"
  source_ami = "ami-05f45f2e962205865"
  ssh_username = "ubuntu"
}

build {
  name = "ec2users-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
}