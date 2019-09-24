**Install Terraform --> I use MacOS so I'll usage "brew"**

>$ brew install terraform

**Create directory which will be contain our files .tf**

>$ mkdir Terraform_examples

**Create first file example.tf with contains initialization data of our Tarraform and simple code for create instance on AWS**

```
provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "terraform"
}

resource "aws_instance" "Ubuntu" {
  count         = 3
  ami           = "ami-05c1fa8df71875112"
  instance_type = "t2.micro"

  tags {
    Name    = "My Ubuntu Server"
    Owner   = "Name Lastname"
    Project = "My Terraform Lessons"
  }
}
```


**After save this file you can (MUST!) see "plan" deployment to AWS**

// Next command show you plan deployment and write this information to "planfile"

>$ terraform plan -out planfile

// Apply our deployment with help planfile, this method is good practice because you save information before deployment

>$ terraform apply planfile

