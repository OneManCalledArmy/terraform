terraform {
  backend "s3" {}
}

module "create-sg" {
    source = "./terraform-modules/create-sg"
}

module "open-ports" {
    source = "./terraform-modules/open-ports"
    ports = [80, 443]
    security_group_id = module.create-sg.outputs.id
}

module "vm" {
    source = "./terraform-modules/vm"
}

module "run-playbook" {
    source = "./terraform-modules/run-ansible"
    public_ip = module.vm.outputs.public_ip
}