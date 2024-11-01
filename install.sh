#!/bin/bash

# Actualiza el sistema
sudo apt update -y

# Descargar e instalar AWS CLI
sudo apt install curl
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

# Descargar e instalar Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform

# Configura AWS CLI automáticamente
aws configure set aws_access_key_id "ASIA3LSDABXJ24X3YFO6"
aws configure set aws_secret_access_key "fdR9pHlpgEjm8NetVYQFcA5cOMbe4vTEwxU+Uhc3"
aws configure set region "us-east-1"
aws configure set output "json"

# Reemplaza el archivo de credenciales
CREDENTIALS_FILE="$HOME/.aws/credentials"
echo "[default]" > $CREDENTIALS_FILE
echo "aws_access_key_id=ASIA3LSDABXJ5YCTSKCT" >> $CREDENTIALS_FILE
echo "aws_secret_access_key=ZEMD0wrNHHfzlWa45969mZtGH2Zx9t21GYgPJaPu" >> $CREDENTIALS_FILE
echo "aws_session_token=IQoJb3JpZ2luX2VjECMaCXVzLXdlc3QtMiJIMEYCIQCfC3jMfyvTZfnY5Nwl65JcwVwbm5WDOJRO9Puw7vRCQQIhANOXg4RgIucW0g5uYLeNtU/rX5bfbq/PJcWtAp7/aEyKKrkCCJz//////////wEQARoMNzgwNzUwODE4NzcxIgwsZQ0OuVTUz2AL2XUqjQJKXmvza1M9Qp+gPpTQX3XUrOinzmf6BY0MTVILTf4rLK6xvvpQlH0Opi00oqJpuO4Z0gqTSzwFaCDM7Gjl+oWpcPyIR3i0dt50aJ82dHQ5dcwWDq4+sLVf29qFjnqtyz9i7hhMpWGBkdsyQ0PIuesO+jHtv6WJWs425OnezLy+YLsHsII3HN2aNLfwoB9UCuL/qcVdvlROHnAs/YipRFD05SuN4CktUTlIMmBDB+xcEJoRmMGLCWLNh94Lr3P19QMwj+zPI3amH6Uu5p02ZSplCcykP++CHOXD5ban1TZZA02SO0vcNfBibkXbGt06GkcFC9sBd4Zdl953SxZhmqckH1eV2Dfw71CTHob1SjDL+JC5BjqcAXtQd0CnRUVYGrsbmDLA0HoIC6nbh3S9V24D0tzvJ7Ao8LJQt7asQxb5yFHYdST2AL3Y1/NFGELkYnO97KhnYYH8HZCsJQIFWJ+s8sxPyr2GKNtdZ0X3EwUNj6eGWlEyulcSNlHtOU4COCIB66PXpPZKjBZOVU2tp50YvdvabEZUewqloX+mH4CL7OvvsN+e5QlmBVat6VZjrghQvA==" >> $CREDENTIALS_FILE

#Iniciar el terraform
cd examen3
cd Proyecto
terraform init
terraform plan
terraform apply -auto-approve
cd Proyecto
chmod +x ssh.sh


