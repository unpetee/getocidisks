FROM openjdk:8
run mkdir /usr/src/myapp
run mkdir /root/.oci/
COPY ocijava-1.0-SNAPSHOT-jar-with-dependencies.jar /usr/src/myapp
COPY config /root/.oci/
COPY oci_api_key.pem /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["java", "-jar", "ocijava-1.0-SNAPSHOT-jar-with-dependencies.jar"]
