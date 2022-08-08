resource "aws_security_group" "sg" {
  name = "Brand New SG"
  description = "Fresh Security Group"
  vpc_id = "vpc-0d36096a3954e4b62"
  # for_each = toset([for key in var.ports : tostring(key)])

  # ingress {
  #   from_port = 0
  #   to_port = 0
  #   protocol = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}