FROM tomcat:9.0.62-jdk8-openjdk
#ADD ROOT /usr/local/tomcat/webapps/
ADD ROOT.war /usr/local/tomcat/webapps/
#ENV CATALINA_OPTS="-Xmx1g -Xms1g"
RUN chmod -R 777 /usr/local/tomcat
RUN sed -i 's/port="8080"/port="80"/' ${CATALINA_HOME}/conf/server.xml
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
