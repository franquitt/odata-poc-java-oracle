FROM maven as builder

RUN mkdir -p /app

WORKDIR /app

ADD ./pom.xml /app/pom.xml
ADD ./src/main/libs/ojdbc8.jar /app/ojdbc8.jar

#instalo la lib de oracle
RUN mvn install:install-file -Dfile=/app/ojdbc8.jar -DgroupId=com.oracle -DartifactId=ojdbc8 -Dversion=19.3 -Dpackaging=jar

RUN mvn dependency:go-offline

WORKDIR /app

#copio el resto de los scripts
ADD ./ /app/

#generamos el war
RUN mvn -Dmaven.test.skip=true package

#copiamos el war a /app/odata.war
RUN cp target/MyOData*.war ./odata.war

#una vez generado el war lo servimos con tomcat
FROM tomcat:jdk8-adoptopenjdk-openj9
COPY --from=builder /app/odata.war /usr/local/tomcat/webapps/
EXPOSE 8080
