UBUNTU_VERSIONS=(14.04 15.04 15.10)
JDK_VERSIONS=(oracle_jdk7.80.15 oracle_jdk8.66.17)
TOMCAT_VERSIONS=(7.0.65 8.0.28)


echo ${UBUNTU_VERSIONS[@]}
for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"
   do
   for JDK_VERSION in "${JDK_VERSIONS[@]}"
      do
      for TOMCAT_VERSION in "${TOMCAT_VERSIONS[@]}"
         do
         echo "$TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION" 
         mkdir -p $TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION
         ./Dockerfile.sh $UBUNTU_VERSION $JDK_VERSION $TOMCAT_VERSION > $TOMCAT_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION/Dockerfile
         done
      done 
   done


