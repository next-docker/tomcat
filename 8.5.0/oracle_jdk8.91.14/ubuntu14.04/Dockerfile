FROM ping2ravi/jdk:oracle_jdk8.91.14_ubuntu.14.04


MAINTAINER Ravi Sharma


# Ubuntu 14.04
# Java Version oracle_jdk8 update 91
# Tomcat Version 8.5.0
#     https://tomcat.apache.org/download-80.cgi


ENV TOMCAT_VERSION 8.5.0
ENV TOMCAT_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV CATALINA_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV TOMCAT_TGZ_URL https://www.apache.org/dist/tomcat/tomcat-8/v8.5.0/bin/apache-tomcat-8.5.0.tar.gz
ENV TOMCAT_FOLDER apache-tomcat-${TOMCAT_VERSION}

RUN  wget -O tomcat.tar.gz ${TOMCAT_TGZ_URL} ; tar -xvf tomcat.tar.gz; mkdir -p ${CATALINA_HOME};mv ${TOMCAT_FOLDER}/* ${CATALINA_HOME}; rm tomcat.tar.gz; rm -fR ${TOMCAT_FOLDER} rm -fR ${CATALINA_HOME}\bin\*.bat


ENV PATH ${PATH}:${CATALINA_HOME}/bin


EXPOSE 8080

CMD catalina.sh run
