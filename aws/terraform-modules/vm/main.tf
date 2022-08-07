resource "aws_instance" "my-machine" {
  count = var.number_of_ec2
  ami = var.ami
  instance_type = var.instance_size
  security_groups = ["launch-wizard-1"]
  subnet_id = "subnet-084fc8d3d42558fff"
  tags = {
    Name = "tf-vm-${count.index}"
  }
}