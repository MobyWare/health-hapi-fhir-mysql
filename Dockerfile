FROM tomcat:8-jre8-alpine

ADD ./hapi-fhir-jpaserver-example.war /usr/local/tomcat/webapps/fhir-base.war

EXPOSE 8080