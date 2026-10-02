#!/bin/bash

# Actualizar los repositorios e instalar Apache de forma no interactiva
apt-get update
apt-get install -y apache2

# Asegurar que el servicio esté activo y configurado para iniciar con el sistema
systemctl enable apache2
systemctl start apache2

# Obtener el hostname dinámicamente
HOSTNAME=$(hostname)

# Crear la página de inicio personalizada
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Servidor Debian 12</title>
</head>
<body>
    <h1>¡Servidor Web Funcionando con Éxito!</h1>
    <p><strong>Nombre del alumno:</strong> Francisco</p>
    <p><strong>Hostname de la máquina:</strong> $HOSTNAME</p>
</body>
</html>
EOF
