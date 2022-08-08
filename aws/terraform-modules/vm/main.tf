resource "aws_instance" "my-machine" {
  count = var.number_of_ec2
  ami = var.ami
  instance_type = var.instance_size
  security_groups = ["sg-0b8f4a0b82c494e7d"]
  subnet_id = "subnet-084fc8d3d42558fff"
  tags = {
    Name = "tf-vm-${count.index}"
  }
}