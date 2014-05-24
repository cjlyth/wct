FROM cjlyth/wct-provided
# FROM cjlyth/wct-download
MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

RUN locale-gen en_US en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8 LC_MESSAGES=POSIX

# supervisor
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# /supervisor






EXPOSE 3306 8080
WORKDIR /root
USER root
CMD ["bash"]
# CMD ["supervisord", "-n", "-k"]
ENTRYPOINT ["/usr/bin/env"]
