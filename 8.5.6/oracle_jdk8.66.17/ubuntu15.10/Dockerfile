FROM ping2ravi/jdk:oracle_jdk8.66.17_ubuntu.15.10


MAINTAINER Ravi Sharma


# Ubuntu 15.10
# Java Version oracle_jdk8 update 66
# Tomcat Version 8.5.6
#     https://tomcat.apache.org/download-80.cgi


ENV TOMCAT_VERSION 8.5.6
ENV TOMCAT_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV CATALINA_HOME /opt/tomcat/tomcat-${TOMCAT_VERSION}
ENV TOMCAT_TGZ_URL http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.6/bin/apache-tomcat-8.5.6.tar.gz
ENV TOMCAT_FOLDER apache-tomcat-${TOMCAT_VERSION}

RUN apt-get install vim -y
RUN  wget -O tomcat.tar.gz ${TOMCAT_TGZ_URL} ; tar -xvf tomcat.tar.gz; mkdir -p ${CATALINA_HOME};mv ${TOMCAT_FOLDER}/* ${CATALINA_HOME}; rm tomcat.tar.gz; rm -fR ${TOMCAT_FOLDER} rm -fR ${CATALINA_HOME}\bin\*.bat


ENV PATH ${PATH}:${CATALINA_HOME}/bin


EXPOSE 8080


CMD catalina.sh run
