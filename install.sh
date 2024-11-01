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
echo "aws_access_key_id=ASIA3LSDABXJ3OB7UP3V" >> $CREDENTIALS_FILE
echo "aws_secret_access_key=2VXdXvPMkK29xm2y9LqOs8X+LPY328ejw1dzbJjW" >> $CREDENTIALS_FILE
echo "aws_session_token=IQoJb3JpZ2luX2VjEC8aCXVzLXdlc3QtMiJHMEUCIQDMWhaXOtlGznxLjvXyG1O3ryuqtYE3ll5YqBEkXCEGogIgK4URGnVkaEoZv/0r/Vl3sSS3WpJlZyFatdAr9hsNxbMquQIIqP//////////ARABGgw3ODA3NTA4MTg3NzEiDCYXRvVkGpCR37nLQiqNAm6gyXECSIDC8t2F3bQ979NLIA3MJSLXy7x0QHwKrHo+Dtp4by+N9GO0BOQ2fSk27awe2tYTEHSoJpqtv4d8c5ZrSAtSmfGqq4aB0Tb3YXFHiRETtSAimceRKWahtStiID9nPatkJ5bsNMvmk3Y+8dRW0miG2S/CJ+kH9JXFJxjfxVdOXyuaJdYRhH4xI75GCN/sYp4HVeim8oAhm8v3q3HgMbnRR6DdZiL3xb/cZkkEAiJ2Umwalgcb2YRwyiWXVl2e8HlyD0JSmA3M9/enGCLep7NDWZ1yg7cCbTScaoKcoN6Kzu3eLmALaWwQonvP/pYT5RZeHEeuf6DlPjh9SBuZVSjhi4fShKvCZXRkMJbfk7kGOp0BbLnsllKmTZ4GWn8Daw/nloRunrKFOPAxPCXTjozN7ljNkLbRpJob8QiA8q8cLbRgkQAKYIg0HtfHk2UiQDYHdTpdKjBXZ9m+PuLN2q9hlzVAyWvMi+bZG7zgX386WsUAuvygzZxCbkvvGYrWVX00LkkZXLFIVEQB7Azc5hYYsnBVg+ik4NZ2glbCwVVB1EhMCLq7WMB7ySYMpT7OjQ==" >> $CREDENTIALS_FILE

#Iniciar el terraform
cd examen3
cd Proyecto
terraform init
terraform plan
terraform apply -auto-approve



