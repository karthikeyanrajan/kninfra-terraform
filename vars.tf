#vars.tf
#variable for provider

variable REGION {
  default = "us-east-2"
}

#variable for AZ

variable "AZ" {
    type = map  #type = map: This line specifies that the variable AZ is of type map. In Terraform, a map variable is used to store a set of related key-value pairs.
    default = {
        "1c" = "us-east-1c"
        "1d" = "us-east-1d"
    }
}

#or we are assigning only one variable for the az means

variable "AZ" {
    default = "us-east-1c"
}

#variable for AMI's

variable AMIS {
  type = map
  default = {
    ubuntu = "ami-053b0d53c279acc90"
    awsami = "ami-041feb57c611358bd"
  }
}

#---------------------------------------------
#provider.tf

provider "aws" {
  region = var.REGION
}

# vi main.tf

resource "aws_instance" "ec2-user" {
  ami                    = var.AMIS["awsami"]
  instance_type          = "t2.micro"
  key_name               = "karthikeyanr"
  vpc_security_group_ids = ["sg-041964bf53eb8099b"]
  availability_zone      = var.AZ["1d"]
  tags = {
    Name    = "New_Karthikeyan_Terraform"
    Usecase = "learning"
    Project = "Devops"
  }
}

resource "aws_instance" "ubuntu" {
  ami                    = var.AMIS["ubuntu"]
  instance_type          = "t2.micro"
  key_name               = "karthikeyanr"
  vpc_security_group_ids = ["sg-041964bf53eb8099b"]
  availability_zone      = var.AZ["1c"]
  tags = {
    Name    = "New_Karthikeyan_Terraform"
    Usecase = "learning"
    Project = "Devops"
  }
}
