resource "aws_security_group_rule" "open-ports" {
    for_each = toset([for key in var.ports : tostring(key)])
    
    type              = "ingress"
    from_port         = each.key
    to_port           = each.key
    protocol          = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    security_group_id = var.security_group_id
}