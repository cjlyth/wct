FROM cjlyth/tomcat-download
# FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

ADD http://sourceforge.net/projects/webcurator/files/latest/download /tmp/wct.tar.gz 
RUN \
	mkdir -p /tmp/wct-dist; \
	tar xa -C /tmp/wct-dist -f /tmp/wct.tar.gz

CMD ["bash"]
ENTRYPOINT ["/usr/bin/env"]