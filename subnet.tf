resource "aws_subnet" "private-subnets"{
    count=3
    vpc_id="${aws_vpc.myvpc.id}"
    cidr_block = "10.1.0.0/16"
    
    
}