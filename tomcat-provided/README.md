
NOTE: this image assumes you have already downloaded tomcat in this directory!

Something like this:


At the time of writing WCT recommended and tested on tomcat `5.5.15`. 
Unfortunately the tomcat download server does not provide that version. 

```
http://archive.apache.org/dist/tomcat/tomcat-5/v5.5.15/bin/
```

Therefore I used a more recent version of tomcat 5.5.

```shell
TOMCAT_VERSION="5.5.36"
TOMCAT_ARCHIVES="http://archive.apache.org/dist/tomcat/tomcat-5"
TOMCAT_URI="$TOMCAT_ARCHIVES/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz"
wget -qO tomcat.tar.gz "$TOMCAT_URI"

```

or more simply

```shell
wget -qO tomcat.tar.gz http://archive.apache.org/dist/tomcat/tomcat-5/v5.5.36/bin/apache-tomcat-5.5.36.tar.gz
```








# 
# Tomcat 
# http://archive.apache.org/dist/tomcat/tomcat-5/v5.5.26/bin/


`wget -qO wct.tar.gz  http://sourceforge.net/projects/webcurator/files/latest/download`


