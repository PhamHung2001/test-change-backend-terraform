 resource "aws_instance" "example" {
   ami           = "ami-024e6efaf93d85776"
   instance_type = "t2.micro"

   vpc_security_group_ids = ["sg-02d2f7dd78a77231f"]

   tags = {
     Name = "bastion"
   }
}
