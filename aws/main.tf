terraform {
  backend "s3" {}
}

#depends on!!
#output z modułu
#module.create_sg.outputs.ports
# output "sg_arn" {
#   value = resource.security_group.arn
# }

module "create-sg" {
    source = "./terraform-modules/create-sg"
    # inoput
    # region = "eu-central-1"
}

module "open-ports" {
    source = "./terraform-modules/open-ports"
    ports = [80, 443]
    # input
    security_group_id = module.create-sg.outputs.id
}

module "vm" {
    source = "./terraform-modules/vm"
}

module "run-playbook" {
    source = "./terraform-modules/run-ansible"
}