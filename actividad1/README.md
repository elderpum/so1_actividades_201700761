# Sistemas Operativos #1
```js
Universidad San Carlos de Guatemala
Programador: Elder Anibal Pum Rojas
Carne: 201700761
Correo: ElderPum@gmail.com
```
---
# Actividad #1
## Tipos de Kernel
Existen distintos tipos de Kernel de sistemas operativos. Esto debido a la evolución de soluciones a problemas y necesidades que se fueron encontrando a lo largo del desarrollo de hardware y software. A continuación, se mencionan algunos de los más destacados e importantes:
### 1. Kernel Monolítico

Este tipo de kernel se encarga de implementar funciones fundamentales como el manejo de archivos, memoria y otros recursos. Le da al sistema operativo una estructura primitiva en el que todos los recursos son accesibles y asociados en el espacio del kernel. Un ejemplo muy claro de este tipo de kernels es DOS. Una de sus desventajas es los limitados recursos que puede manejar, aunque a pesar de ello tiene funcionalidades como scheduling del CPU, llamadas de sistema y otras funciones fundamentales. Todos los drivers que acceden directamente al hardware están incrustados en el kernel, por lo que pueden comunicarse directamente entre ellos.

Puede cargar módulos dinámicamente, lo cual le permite no tener que incluirlos en la imagen del sistema operativo como tal. La gran desventaja que tiene este tipo de kernels es el que todo proceso se encuentre en “un solo segmento”. Por lo que, si un servicio o driver falla, causa que el kernel también falle y entre en pánico.

### 2. Microkernel
Este tipo de kernel es muy parecido al monolítico. Con la principal diferencia que servicios como la compartición de archivos, scheduling, servicios del kernel y otros; corre en un espacio distinto al kernel principal. Cada servicio tiene su propia dirección, lo que genera que el kernel y el sistema operativo reduzcan en tamaño muy considerablemente. El poder dividir el kernel en módulos más pequeños y con propósitos bien establecidos, genera un kernel mas confiable y estable. Este kernel por lo mencionado anteriormente, también cuenta con un medio de comunicación entre programas del cliente y servicios que corren en el espacio de usuario. Cualquier servicio nuevo es ejecutado en espacio del usuario, lo cual permite que el kernel no sea modificado. A diferencia del kernel monolítico, si un servicio falla, el kernel se ve intacto y la recuperación de errores es mucho mejor.

### 3. Nanokernel
Este tipo de kernels suelen ser muy primitivos y básicos, y como resultado la cantidad de código es mínimo. Incluye el código que ejecuta cosas relacionados al hardware en modo privilegiado. Aunque el nombre de hecho proviene de algo distinto, esto siendo que soporta frecuencia de relojes de un nanosegundo. Un claro ejemplo es KeyKOS (orientado a objetos). Uno de los fenómenos por el cual se usa este tipo de kernels es el poder correr varias instancias del mismo SO en un sistema. KeyKOS usa solamente 100KB de memoria y tiene aproximadamente 2000 líneas de código en C.

### 4. Kernel híbrido

Este tipo de kernels combinan dos aspectos del monolítico y el Microkernel: tiene adiciones al kernel en conceptos de bloques (como el Microkernel) y algunos conceptos de monolítico que extienden al mismo para mejor rendimiento. La desventaja es que no se pueden cargar módulos dinámicamente. XNU es un ejemplo de este tipo de kernels (que posteriormente dio lugar a sistemas operativos de la familia de Apple (MacOS, iOS, WatchOS, tvOS). A diferencia del Microkernel, este tipo de kernel si divide trabajo en no solo el espacio de kernel. Esto permite simplicidad, eficiencia y ciertas modificaciones que no se pueden modificar del distribuidor.

### 5. Exokernel
Este tipo de kernel tiene como objetivo brindar manejo de hardware a nivel de aplicación. La arquitectura del mismo está diseñada para isolar la protección de recursos de su manejo, facilitando así la customización a nivel de aplicación.


## User vs Kernel Mode
Este tipo de modos refieren al acceso de los recursos del sistema. En el modo de kernel, el programa tiene acceso directo e ilimitado a los recursos del sistema, mientras que en modo de usuario no. En caso de las interrupciones, en modo de kernel todo el sistema se detiene si se causa una interrupción, mientras que en modo de usuario se detiene solo el proceso. También tiene que ver con los permisos de lectura/escritura/ejecución de archivos/binarios en el sistema. La otra diferencia es la dirección en la que corren. En el modo de kernel todos los procesos comparten la misma dirección virtual, mientras que en el modo de usuario cada proceso tiene su propia dirección.

El modo de kernel puede acceder a programas tanto en el kernel como en el usuario. Mientras que el usuario solo puede acceder a usuario, y si desea acceder al kernel debe hacerlo con una aplicación de kernel intermediaria.