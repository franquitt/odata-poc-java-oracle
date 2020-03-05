# OData corriendo en Java con conexion a Oracle
La finalidad de este repositorio es mostrar una rapida implementacion de **odata** en java conectada a una base de datos Oracle. Además este ejemplo cuenta con un ejemplo de implementación de recursos anidados y de vistas de Oracle.


### Tecnologías:
- Oracle con vistas
- Java
- Olingo Odata v2


### Despliegue
Esta pensado para correrse en 2 contenedores docker, uno para backend, otro para la DB y otro para el front. Para iniciarlos basta con correr en el directorio *container*:

	sudo docker-compose up


## Uso
Los contenedores docker van a brindar 2 servicios en los siguientes puertos
- http://localhost:8080/odata/MyODataServiceServlet.svc/Users?$format=json  => API Endpoint de Odata
- localhost:1521        => Oracle
