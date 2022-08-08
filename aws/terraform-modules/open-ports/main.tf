resource "aws_security_group" "sg" {
  name = "launch-wizard-1"
  description = "Security Group"
  for_each = toset([for key in var.ports : tostring(key)])

  ingress {
    from_port = each.key
    to_port = each.key
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }    
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}