 resource "aws_instance" "example" {
   ami           = "ami-0e7ff22101b84bcff"
   instance_type = "t2.micro"

   vpc_security_group_ids = ["sg-0d069d67be439de67"]

   tags = {
     Name = "bastion"
   }
}
