FROM ping2ravi/jdk:oracle_jdk7.80.15_ubuntu.14.04


MAINTAINER Ravi Sharma


# Ubuntu 14.04
# Java Version oracle_jdk7 update 80
# Tomcat Version 9.0.0.M4
#     https://tomcat.apache.org/download-90.cgi


ENV TOMCAT_VERSION 9.0.0.M4
ENV TOMCAT_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV CATALINA_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV TOMCAT_TGZ_URL https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M4/bin/apache-tomcat-9.0.0.M4.tar.gz
ENV TOMCAT_FOLDER apache-tomcat-${TOMCAT_VERSION}

RUN  wget -O tomcat.tar.gz ${TOMCAT_TGZ_URL} ; tar -xvf tomcat.tar.gz; mkdir -p ${CATALINA_HOME};mv ${TOMCAT_FOLDER}/* ${CATALINA_HOME}; rm tomcat.tar.gz; rm -fR ${TOMCAT_FOLDER} rm -fR ${CATALINA_HOME}\bin\*.bat


ENV PATH ${PATH}:${CATALINA_HOME}/bin


EXPOSE 8080

ADD server.xml /opt/tomcat/tomcat-${TOMCAT_VERSION}/.

CMD catalina.sh run
