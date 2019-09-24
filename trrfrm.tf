provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "terraform"
}

resource "aws_instance" "Ubuntu" {
  //count         = 3
  ami           = "ami-05c1fa8df71875112"
  instance_type = "t2.micro"

  tags {
    Name    = "My Ubuntu Server"
    Owner   = "Ivan Kostin"
    Project = "My Terraform Lessons"
  }
}
