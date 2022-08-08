output "public_ip" {
    value = resource.aws_instance.my-machine.public_ip
}