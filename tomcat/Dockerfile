FROM cjlyth/mysql-provided
# FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

ADD tomcat.tar.gz /tmp/tomcat-dist
ADD http://archive.apache.org/dist/tomcat/tomcat-5/v5.5.36/bin/apache-tomcat-5.5.36.tar.gz /tmp/tomcat.tar.gz
RUN \
	mkdir -p /tmp/tomcat-dist; \
	tar xa -C /tmp/tomcat-dist -f /tmp/tomcat.tar.gz


USER root

RUN cp -r /tmp/tomcat-dist/* /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat/
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/
RUN ln -s /usr/local/tomcat/bin/catalina.sh /usr/local/bin/tomcat

EXPOSE 8080
WORKDIR /usr/local/tomcat/
USER root
CMD ["tomcat"]
ENTRYPOINT ["/usr/bin/env"]