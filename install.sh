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
echo "aws_access_key_id=ASIA3LSDABXJ53XG45J7" >> $CREDENTIALS_FILE
echo "aws_secret_access_key=AWxT2f4fLw0hQmRZr5VtlTq1N0qOZG+HykHcCz+Q" >> $CREDENTIALS_FILE
echo "aws_session_token=IQoJb3JpZ2luX2VjECkaCXVzLXdlc3QtMiJHMEUCIA9aQihduAmmQpj7zviSpex90ZCJEwASazjVBOequozuAiEA/8Bgha5TbH0Og3jNgtw2rBAnPrp7SsydoYDiv8R3ZNYquQIIov//////////ARABGgw3ODA3NTA4MTg3NzEiDFvvXebgzGzCxs815iqNAm4wkPhGnOfZjj6M6AK6zKh55u2b2/dNohyuI0gMgfQpgmEQqfEmk66cUwKb9x4DkePf63BIyMlFgThLWLKeuGZeyGYoI1hHo6DQ9sJhePmb3JoePP8JLmNuSNsn3JVi8ooQ0/oHj63aqdoNVwbqQn5gccD3IhOQh+i9Re6GRp0xYdjqp9HVKPK8YCCvDQWYvvKrycw9+NOYYm36TCfYuhx7ckMMHRIl3dfYgEoW12m7OPemDzVaruMyg18tsb0W9vsR3x1l8MdCr/XgOpxLOQjHGkoCys0OaVpSLcII64iucUtBupM/egOHEdsfMqEz7OgeneHYAK+sWZ/2oQmRjY5qyuVVF22H7oycmoMHMKepkrkGOp0BoTVDofKwM9Sc+9d0llZWsvKHIYEAOKEjMQhGR2g0Xc06+pVtcsK5vRhNFHnQN/nCID4xooNa7wJDn06sS+Rn/n48ptC0hsY3lL/BYkGCz7GpZSb9LcimAh2C4SoDwbNBNJnw0t9Q12nTgWjjHTFWNpVlFnuaM4lnxLieQsUuqWgPuIdtfAM1MHVQCW2C+CcEpLJqbvPqUiduTKVSjg==" >> $CREDENTIALS_FILE

#Iniciar el terraform
cd examen3
cd Proyecto
terraform init
terraform plan
terraform apply -auto-approve



