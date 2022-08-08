resource "run-playbook" "playbook" {
    provisioner "local-exec" {
        command = "ansible-playbook -i /home/jacek/ansible/inventory/vms.imi /home/jacek/ansible/playbooks/mysql.yaml --private-key ~/.ssh/aws-app.pem -vvv"
    }
}