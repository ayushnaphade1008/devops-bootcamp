provider "aws" {
    region = "us-east-1"
    # authenctication credentials are configured via aws cli
}

resource "aws_eip" "elastic-ip" {
  domain = "vpc"
}

resource "aws_instance" "demo_instance" {
    ami = "ami-08b5b3a93ed654d19"
    instance_type = "t2.micro"
 
    tags = {
        Name = "ayush"
    }
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.28.0"
    }
  }
}

provider "google"{
    region = "europe-west1"
}