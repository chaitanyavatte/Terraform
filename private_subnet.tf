resource "aws_subnet" "private-subnets"{
    count="${length(var.private_cidr_block)}"
    vpc_id="${aws_vpc.myvpc.id}"
    private_cidr_block = ["10.1.1.0/24","10.1.2.0/24","10.1.3.0/24"]
     tags = {
         type="string"
         Name = "private_subnet-${count.index+1}"
     }
     }
