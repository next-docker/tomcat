UBUNTU_VERSIONS=(14.04 15.04 15.10 16.04)
JDK_VERSIONS=(oracle_jdk8.102.14 oracle_jdk8.91.14 oracle_jdk8.92.14 oracle_jdk7.80.15 oracle_jdk8.66.17 oracle_jdk7.67.15)
TOMCAT_VERSIONS=(9.0.0.M11 7.0.65 8.5.5 8.5.6 8.0.37 8.0.33 8.0.28 8.0.9)


echo ${UBUNTU_VERSIONS[@]}
for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"
   do
   for JDK_VERSION in "${JDK_VERSIONS[@]}"
      do
      for TOMCAT_VERSION in "${TOMCAT_VERSIONS[@]}"
         do
         echo "$TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION" 
         mkdir -p $TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION
         rm -f $TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION/server.xml
         ./Dockerfile.sh $UBUNTU_VERSION $JDK_VERSION $TOMCAT_VERSION > $TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION/Dockerfile
         done
      done 
   done



