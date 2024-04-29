variable "ami_name" {
   type = string
   default = "ami-image-packer"  
}

variable "instance_type" {
   type = string
   default = "t4g.micro"

}

variable region {
   type = string
   default = "us-east-1"
}

variable "ami_regions" {
   type = list(string)
   default = ["us-east-1"]
}

variable "source_ami" {
   type = string
   default = "ami-09e060bed64ca0c04"
   validation {
    condition     = length(var.source_ami) > 4 && substr(var.source_ami, 0, 4) == "ami-"
    error_message = "The image_version value must be a valid source_ami, starting with \"ami-\"."
  }

}

variable "ssh_username" {
   type = string
   default = "ec2-user"
}

variable "ami_users" {
   type = list(string)
   default = ["155918051273"]
}
  
