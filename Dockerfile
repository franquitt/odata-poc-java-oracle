FROM maven as builder

RUN mkdir -p /app

WORKDIR /app
#instalo la lib de oracle
ADD ./src/main/libs/ojdbc8.jar /app/ojdbc8.jar
RUN mvn install:install-file -Dfile=/app/ojdbc8.jar -DgroupId=com.oracle -DartifactId=ojdbc8 -Dversion=19.3 -Dpackaging=jar

ADD ./pom.xml /app/pom.xml

RUN mvn clean package -Dmaven.main.skip -Dmaven.test.skip && rm -r target

#copio el resto de los scripts
ADD ./ /app/

#generamos el war
RUN mvn clean package -Dmaven.test.skip


#copiamos el war a /app/odata.war
RUN cp target/MyOData*.war ./odata.war

#una vez generado el war lo servimos con tomcat
FROM tomcat:jdk8-adoptopenjdk-openj9
COPY --from=builder /app/odata.war /usr/local/tomcat/webapps/
EXPOSE 8080
