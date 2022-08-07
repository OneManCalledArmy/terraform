module "remote_state" {
    source = "./terraform-modules/remote_state"
}

module "vm" {
    source = "./terraform-modules/vm"
}