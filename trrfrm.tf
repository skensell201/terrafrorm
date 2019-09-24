provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "terraform"
}

resource "aws_instance" "Ubuntu" {
  ami           = "ami-05c1fa8df71875112"
  instance_type = "t2.micro"
}
