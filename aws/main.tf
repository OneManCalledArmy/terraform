terraform {
  backend "s3" {}
}

module "vm" {
    source = "./terraform-modules/vm"
}

module "open-ports" {
    source = "./terraform-modules/open-ports" 
}

module "run-playbook" {
    source = "./terraform-modules/run-ansible"
}