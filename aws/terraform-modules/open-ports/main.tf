resource "aws_security_group_rule" "open-ports" {
    for_each = toset([for key in var.ports : tostring(key)])
    
    type              = "ingress"
    from_port         = each.key
    to_port           = each.key
    protocol          = "tcp"
    # cidr_blocks       = [aws_vpc.example.cidr_block]
    # ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
    security_group_id = var.security_group_id
}