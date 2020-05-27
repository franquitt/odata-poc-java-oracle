# OData corriendo en Java con conexion a Oracle|MySQL
La finalidad de este repositorio es mostrar una rapida implementacion de **odata** en java conectada a una base de datos Oracle o MySQL. Además este ejemplo cuenta con una implementación de
recursos anidados y de vistas de Oracle|MySQL. Se utiliza el protocolo OData V2.


### Tecnologías:
- Oracle con vistas
- Java
- Olingo Odata v2
- MySQL

### Conexión con Base de Datos
La definición de la conexión con la base de datos se presenta en el archivo ***src/main/resources/META-INF/persistence.xml***. 
 Aquí se define el string de conexión, el driver, user y pass para la misma. Se incluyen los drivers para MySQL y Oracle en esta solución, 
 pudiendo descomentar en el mismo archivo lo que se quiera utilizar. Además el proyecto es compatible para agregarle los driver de Postgres o HyperSQL.

### Definición de recursos:
Los recursos son definidos a través de simples clases Java dentro del directorio ***src/main/java/entity***. Estas poseen atributos, un constructor y getters y setters, ademas de ciertos
decoradores. Este ejemplo tiene 3 recursos definidos:
- Books
- Usuarios
- Vista Usuarios

Además de la definición de recursos, hay que registrar los mismos dentro del archivo ***persistence.xml***.   

### Despliegue
Esta pensado para correrse en 2 contenedores docker, uno para backend y otro para la DB. Para iniciar el proyecto los pasos son:
1. Clonar el repo o descargar el repositorio:
```bash
	git clone https://github.com/franquitt/odata-poc-java-oracle
```
2. Posicionarse sobre la carpeta y ejecutar el siguiente comando para contruir la imagen y el contenedor:
```bash
	cd odata-poc-java-oracle
```
3. Levantar los contenedores
```bash
	sudo docker-compose up
```
Puede llegar a tardar hasta dos minutos levantar la DB en conjunto al backend. El proyecto estará listo cuando se entre al frontend y esten listados los libros previamente cargados de ejemplo.

## Uso
Los contenedores docker van a brindar 2 servicios en los siguientes puertos
- http://localhost:8080/odata/odata-service.svc/Users?$format=json  => API Endpoint de Odata
- http://localhost:8080/odata/odata-service.svc/Books?$format=json  => API Endpoint de Odata

[ E-team - Telecom ]
