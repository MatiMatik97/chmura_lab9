FROM java:8  
COPY ./ObslugaBazy.java /
RUN curl -L -o /mysql-connector-java-5.1.6.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.6/mysql-connector-java-5.1.6.jar
ENV CLASSPATH=/mysql-connector-java-5.1.6.jar:${CLASSPATH}
WORKDIR /  
RUN javac ObslugaBazy.java
CMD ["java", "-classpath", "mysql-connector-java-5.1.6.jar:.","ObslugaBazy"]
