FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>
ENTRYPOINT ["/usr/bin/env"]
ADD ./ /download
RUN cp /download/*.tar.gz /tmp/
RUN wget -nc -O /tmp/mysql.tar.gz --progress=bar \
	http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.17-linux-glibc2.5-x86_64.tar.gz ; \
	true
RUN tar -xa \
	--transform "s/^mysql[^\/]*/mysql/" \
	-C /opt -f /tmp/mysql.tar.gz

WORKDIR /opt/mysql	
RUN ["useradd", "-r", "-U", "mysql"]
# RUN ["chown", "-R", "root:mysql", "/opt/mysql"]
RUN ["env", "DEBIAN_FRONTEND=noninteractive", "apt-get", "install", "-qqy", "libaio1"]
RUN ["cp", "-rs", "/opt/mysql/bin", "/usr/local/"]

# find -L /var -type d -name "mysqld" -exec 
# mkdir --mode=755 -p /var/{run,log,lock}/mysqld 
RUN ["mkdir", "-p", "mysql:mysql", "/opt/mysql"]
RUN ["chown", "-R", "mysql:mysql", "/opt/mysql"]


# RUN ["/usr/local/mysql/scripts/mysql_install_db", \
# 	 "--user=mysql", \
# 	 "--basedir=/usr/local/mysql", \
# 	 "--random-passwords", \
# 	 "--skip-name-resolve"]
# RUN find /usr/local/mysql -mindepth 1 -maxdepth 1 ! -name "data" -exec chown -R root {} \;
# ENV MYSQL_TCP_PORT 3306
# ENV MYSQL_HOME /usr/local/mysql
# ./bin/mysql_secure_installation

# EXPOSE 3306
# WORKDIR /usr/local/mysql
# USER mysql
# CMD ["mysqladmin"]


CMD ["bash"]