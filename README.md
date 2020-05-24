# OData corriendo en Java con conexion a Oracle
La finalidad de este repositorio es mostrar una rapida implementacion de **odata** en java conectada a una base de datos Oracle. Además este ejemplo cuenta con un ejemplo de implementación de recursos anidados y de vistas de Oracle. Se utiliza el protocolo OData V2.


### Tecnologías:
- Oracle con vistas
- Java
- Olingo Odata v2


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

[ Eteam - Telecom ]
