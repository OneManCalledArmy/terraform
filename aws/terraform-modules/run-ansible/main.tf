resource "null_resource" "playbook" {
    provisioner "local-exec" {
        command = "ansible-playbook /home/jacek/ansible/playbooks/mysql.yaml -i /home/jacek/ansible/inventory/vms.ini --private-key /home/jacek/.ssh/aws-app.pem -vvv"
        }
}