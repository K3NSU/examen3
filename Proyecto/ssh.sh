!/bin/bash

#Otorgamos permisos a la llave
chmod 400 "examen3.pem"

# nombre de tu instancia
INSTANCE_NAME="Examen3instance"

# Obtener el ID de la instancia usando su nombre
INSTANCE_ID=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$INSTANCE_NAME" --query 'Reservations[0].Insta>

# Obtener la dirección IP pública de la instancia
IP_ADDRESS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query 'Reservations[0].Instances[0].PublicIpAddre>

echo "La IP pública de la instancia es: $IP_ADDRESS"

# Conectar automáticamente a la instancia
ssh -i "examen3.pem" ubuntu@$IP_ADDRESS