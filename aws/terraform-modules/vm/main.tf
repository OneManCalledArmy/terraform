resource "aws_instance" "my-machine" {
  count = var.number_of_ec2
  ami = var.ami
  instance_type = var.instance_size
  security_groups = [var.security_group_id]
  subnet_id = "subnet-084fc8d3d42558fff"
  key_name = "alien"
  tags = {
    Name = "tf-vm-${count.index}"
  }

  provisioner "local-exec" {
    command = "ansible-playbook playbooks/mysql.yaml -i ${self.public_ip} --private-key ~/.ssh/alien.pem"
  }
}