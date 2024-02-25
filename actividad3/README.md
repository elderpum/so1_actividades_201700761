# ACTIVIDAD 3: SYSTEMD UNIT

## Instalación

1. Copiar el archivo `actividad3.sh` a `usr/local/bin` y darle permisos de ejecución con el comando `sudo chmod +x /usr/local/bin/actividad3.sh`.

2. Copiar el archivo `actividad3.service` a `/etc/systemd/system` y asegurarse que tenga permisos de ejecucion.

3. Entrar al directorio donde se encuentra el servicio.

4. Habilitar el servicio con el comando `sudo systemctl enable actividad3`.

## Inicio y verificacion del estado y logs del servicio

Estando dentro del directorio `/etc/systemd/system` relizar lo siguiente:

1. Iniciar el servicio con el comando `sudo systemctl start actividad3`.

2. revisar el estado del servicio con `sudo systemctl status actividad3`, este comando tambien permitira ver algunas lines de los registros de este servicio como resumen.

3. Para ver los logs del servicio utilizar el comando `sudo jorunalctl -u actividad3`.

Para estos comando se necesitan los privilegios del superusuario por lo que se debe de utilizar siempre `sudo` o cambiar al usuario root escribiendo en la terminal `su`.