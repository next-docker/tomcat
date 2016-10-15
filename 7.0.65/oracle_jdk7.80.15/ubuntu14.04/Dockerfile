FROM ping2ravi/jdk:oracle_jdk7.80.15_ubuntu.14.04


MAINTAINER Ravi Sharma


# Ubuntu 14.04
# Java Version oracle_jdk7 update 80
# Tomcat Version 7.0.65
#     https://tomcat.apache.org/download-70.cgi


ENV TOMCAT_VERSION 7.0.65
ENV TOMCAT_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV CATALINA_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV TOMCAT_TGZ_URL http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.65/bin/apache-tomcat-7.0.65.tar.gz
ENV TOMCAT_FOLDER apache-tomcat-${TOMCAT_VERSION}

RUN  wget -O tomcat.tar.gz ${TOMCAT_TGZ_URL} ; tar -xvf tomcat.tar.gz; mkdir -p ${CATALINA_HOME};mv ${TOMCAT_FOLDER}/* ${CATALINA_HOME}; rm tomcat.tar.gz; rm -fR ${TOMCAT_FOLDER} rm -fR ${CATALINA_HOME}\bin\*.bat


ENV PATH ${PATH}:${CATALINA_HOME}/bin


EXPOSE 8080


CMD catalina.sh run
