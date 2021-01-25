FROM openjdk:8
ENV PORT 8080
#ontimize app port
EXPOSE 8080
#app
COPY ./module-boot/target/REPLACE_ME_APP_NAME-boot.jar /opt/REPLACE_ME_APP_NAME-boot.jar
COPY ./module-model/src/main/db/templateDB.txt /db/templateDB.script
WORKDIR /opt
## download from mvnrepository.
RUN wget https://repo1.maven.org/maven2/org/hsqldb/hsqldb/2.3.4/hsqldb-2.3.4.jar
WORKDIR /
ADD start.sh /
RUN chmod +x /start.sh
#CMD ["java", "-cp" , "/opt/hsqldb-2.3.4.jar", "org.hsqldb.Server" , "-port", "9013",  "-database.0", "/app/templateDB",  "-dbname.0",  "templateDB"]
ENTRYPOINT ["./start.sh"]

