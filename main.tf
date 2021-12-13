terraform {
  required_version = ">= 0.12"
}

provider "aws" {
	region = "us-east-2"
	access_key = "AKIA4DCV3VXGGFSM6EFB"
	secret_key = "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"
	}

resource "aws_instance" "terraform_initiated_ec2"{
	ami = "ami-002068ed284fb165b"
	instance_type = "t2.micro"
	tags = {
		Name = "tfs_initiated"
	}
}