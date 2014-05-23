FROM cjlyth/tomcat-provided
# FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

ADD wct.tar.gz /tmp/wct-dist

RUN cp /tmp/wct-dist/war/* /usr/local/tomcat/webapps/

CMD ["bash"]
ENTRYPOINT ["/usr/bin/env"]