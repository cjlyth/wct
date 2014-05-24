FROM cjlyth/tomcat-provided
# FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

ADD wct.tar.gz /tmp/wct-dist
ADD http://sourceforge.net/projects/webcurator/files/latest/download /tmp/wct.tar.gz 
RUN \
	mkdir -p /tmp/wct-dist; \
	tar xa -C /tmp/wct-dist -f /tmp/wct.tar.gz



RUN cp /tmp/wct-dist/war/* /usr/local/tomcat/webapps/

CMD ["bash"]
ENTRYPOINT ["/usr/bin/env"]