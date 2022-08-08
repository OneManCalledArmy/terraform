# terraform
Not so simple anymore - terraform project

Init:
---
*BASH* <br />
terraform init -backend-config=backend.conf

*POWERSHELL* <br />
terraform init -backend-config="backend.conf"

if "Error: error configuring S3 Backend: no valid credential sources for S3 Backend found.":<br />
    terraform init -backend-config="access_key=" -backend-config="secret_key=" -backend-config="backend.conf"

Envs:
---
*BASH* <br />
export AWS_ACCESS_KEY_ID="" <br />
export AWS_SECRET_ACCESS_KEY="" <br />

*POWERSHELL* <br />
Set-Variable -Name "AWS_ACCESS_KEY_ID" -Value "" <br />
Set-Variable -Name "AWS_SECRET_ACCESS_KEY" -Value "" <br />

DEBUGGING
---
echo $AWS_ACCESS_KEY_ID <br />
echo $AWS_DEFAULT_REGION <br />
echo $AWS_PROFILE <br />
echo $AWS_SECRET_ACCESS_KEY <br />
echo $AWS_SHARED_CREDENTIALS_FILE <br />