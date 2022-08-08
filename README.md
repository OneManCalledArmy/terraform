# terraform
Simple terraform projects

#TODO:
1. Security Group --> Dynamic Block
2. Kolejność odpalania modułów
3. Wyjąć zmianną dla VM z modułu od SG
4. IP VM --> Ansible


Init:
---
*BASH*
terraform init -backend-config=backend.conf

*POWERSHELL*
terraform init -backend-config="backend.conf"

Envs:
---
*BASH*
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

*POWERSHELL*
Set-Variable -Name "AWS_ACCESS_KEY_ID" -Value ""
Set-Variable -Name "AWS_SECRET_ACCESS_KEY" -Value ""