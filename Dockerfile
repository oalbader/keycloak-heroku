FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
ADD keywind.jar /opt/jboss/providers/keywind.jar

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

