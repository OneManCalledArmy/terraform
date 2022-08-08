terraform {
  backend "s3" {}
}

module "create-sg" {
    source = "./terraform-modules/create-sg"
}

module "open-ports" {
    source = "./terraform-modules/open-ports" 
}

module "vm" {
    source = "./terraform-modules/vm"
}

module "run-playbook" {
    source = "./terraform-modules/run-ansible"
}