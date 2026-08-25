provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "test_instance" {
    instance_type = "t3.micro"
    ami = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

locals {
    cluster_name = "ht-aw-jg-cluster"
}
