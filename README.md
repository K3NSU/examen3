# examen3

En nuestro pc ejecutaremos el comando 
sudo apt install git

y luego el comando
git clone https://github.com/K3NSU/examen3.git

Una vez descargado el git procedemos a entrar a la carpeta de examen3 y usar el siguiente comando
chmod +x install.sh

Y ejecutamos el script con
./install.sh

Entramos a la carpeta de Proyecto y le damos permisos al script
cd Proyecto
chmod +x ssh.sh

Una vez la instancia se inicie la instancia ejecutamos el siguiente script
./ssh.sh

Ya dentro de la instancia descargamos el git con el comando
sudo apt install git

y luego el comando
git clone https://github.com/K3NSU/examen3.git

Una vez descargado el git procedemos a entrar a la carpeta de examen3 y a la carpeta de docker y le damos permisos al script
chmod +x install_docker.sh

Ejecutamos el script con el comando
./install_docker.sh

Ahora le daremos permisos al creador de docker con el comando
chmod +x docker.sh

Ejecutamos el script con el comando
./docker.sh

Podemos hacer pruebas buscando en google la pagina
http:// IP Publica de la instancia EC2





