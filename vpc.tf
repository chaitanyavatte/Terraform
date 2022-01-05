resource "aws_vpc" "myvpc" {

    cidr_block = var.vpc_cidr
    tags = {
        name="Terraform Prac"
        Use="can be deleted any time"
    }
  
}