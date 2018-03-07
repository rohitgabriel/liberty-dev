FROM websphere-liberty:kernel
COPY server.xml /config/
RUN installUtility install --acceptLicense defaultServer
ENV LICENSE accept
EXPOSE 9080 9443
COPY Sample1.war /config/dropins/Sample1.war
