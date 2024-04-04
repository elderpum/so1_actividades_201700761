# Actividad 7 - Completely Fair Scheduler (CFS)
El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesos desarrollado para el kernel de Linux. Su objetivo principal es asignar tiempo de CPU de manera justa y equitativa entre los procesos en ejecución, priorizando la equidad en el reparto de recursos en lugar de la velocidad de respuesta.

Las características principales del CFS son:

1. Equidad: El CFS busca garantizar que todos los procesos obtengan una cantidad justa de tiempo de CPU, independientemente de su prioridad o de su historial de ejecución anterior. Esto significa que ningún proceso debe ser favorecido o perjudicado injustamente en comparación con otros.

2. Modelo de tiempo compartido: En lugar de asignar una prioridad estática a cada proceso, el CFS utiliza un modelo de tiempo compartido en el que cada proceso recibe una "cuota" de tiempo de CPU. Esta cuota se calcula dinámicamente en función del número de procesos en ejecución y de la prioridad relativa de cada uno.

3. Colas de espera de ejecución: El CFS organiza los procesos en una estructura de árbol de prioridad llamada "árbol rojo-negro", donde cada nodo representa un proceso y sus hijos representan subprocesos o hilos. Los procesos se insertan en esta estructura según su tiempo de ejecución restante y se seleccionan para ejecución en función de su posición en el árbol.

4. Prioridad dinámica: Aunque el CFS no asigna prioridades estáticas a los procesos, utiliza un mecanismo de prioridad dinámica basado en la cantidad de tiempo de CPU utilizado por cada proceso. Los procesos que han recibido menos tiempo de CPU en el pasado tendrán una prioridad más alta para recibir tiempo de CPU en el futuro.

El funcionamiento del CFS se basa en el concepto de "quantum" o "slice de tiempo", que representa la duración de cada turno de ejecución asignado a un proceso. Cuando un proceso agota su quantum de tiempo, se coloca nuevamente en la cola de espera de ejecución y se selecciona otro proceso para ejecución. Este proceso de selección se realiza de manera que se garantice la equidad en el reparto de recursos entre todos los procesos en ejecución.

![](https://i.ibb.co/fD3XWgj/image.png)

![](https://i.ibb.co/JnLF5dy/image.png)