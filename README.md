# terraform
Simple terraform projects

Init:
---
*BASH*
terraform init -backend-config=backend.conf

*POWERSHELL*
terraform init -backend-config="backend.conf"

if "Error: error configuring S3 Backend: no valid credential sources for S3 Backend found.":
    terraform init -backend-config="access_key=" -backend-config="secret_key=" -backend-config="backend.conf"

Envs:
---
*BASH*
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

*POWERSHELL*
Set-Variable -Name "AWS_ACCESS_KEY_ID" -Value ""
Set-Variable -Name "AWS_SECRET_ACCESS_KEY" -Value ""

DEBUGGING
---
echo $AWS_ACCESS_KEY_ID
echo $AWS_DEFAULT_REGION
echo $AWS_PROFILE
echo $AWS_SECRET_ACCESS_KEY
echo $AWS_SHARED_CREDENTIALS_FILE