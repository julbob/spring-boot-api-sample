FROM eclipse-temurin:21
ARG profil
ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8
ENV TZ=Europe/Paris
ARG JAR_FILE=target/testtechnique.jar
COPY ${JAR_FILE} SampleApp.jar
ENTRYPOINT java -Duser.language=fr -Duser.country=FR -jar SampleApp.jar