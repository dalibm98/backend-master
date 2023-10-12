FROM adoptopenjdk:11-jre-hotspot
VOLUME /tmp
ADD target/*.jar app.jar
CMD ["java", "-jar", “app.jar", "--spring.profiles.active=prod"]
EXPOSE 8091

