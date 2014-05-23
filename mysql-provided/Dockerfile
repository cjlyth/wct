FROM dockerfile/java

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

ADD mysql.tar.gz /tmp/mysql-dist

# MySQL
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy libaio1 
RUN ["useradd", "-G", "root","-r", "-U", "-M", "mysql"]
RUN cp -r /tmp/mysql-dist/* /usr/local/mysql
RUN chown -R mysql:mysql /usr/local/mysql
RUN cp -rs /usr/local/mysql/bin /usr/local/
WORKDIR /usr/local/mysql
RUN ["/usr/local/mysql/scripts/mysql_install_db", \
	 "--user=mysql", \
	 "--basedir=/usr/local/mysql", \
	 "--random-passwords", \
	 "--skip-name-resolve"]
RUN find /usr/local/mysql -mindepth 1 -maxdepth 1 ! -name "data" -exec chown -R root {} \;
ENV MYSQL_TCP_PORT 3306
ENV MYSQL_HOME /usr/local/mysql
# ./bin/mysql_secure_installation
# /MySQL

EXPOSE 3306
WORKDIR /usr/local/mysql
USER mysql
CMD ["mysqladmin"]
ENTRYPOINT ["/usr/bin/env"]