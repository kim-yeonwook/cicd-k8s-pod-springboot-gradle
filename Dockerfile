FROM openjdk:17-jdk

ARG ENV

ENV ENV=${ENV}

ENV APP_HOME=/usr/app/

WORKDIR $APP_HOME

COPY build/libs/*.jar app.jar

CMD ["java","-Dfile.encoding=UTF-8", "-Dspring.profiles.active=${ENV}", "-jar", "app.jar"]