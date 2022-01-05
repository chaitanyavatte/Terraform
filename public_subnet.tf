resource "aws_subnet" "Public_subnet" {
    count="${length(var.public_cidr_block)}"
    vpc_id="${aws_vpc.myvpc.id}"
    public_cidr_block = ["10.1.10.0/24","10.1.20.0/24","10.1.30.0/24"]
    tags = {
         type="string"
         Name = "public_subnet-${count.index+1}"
     }
     }
