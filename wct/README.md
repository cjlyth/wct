
# dpkg-divert --local --rename --add /sbin/initctl
# ln -s /bin/true /sbin/initctl

RUN useradd -k /root -G sudo,adm,root -U -m -s /bin/bash cjlyth
RUN echo "cjlyth        ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN echo "cjlyth:cjlyth" | chpasswd


# ./bin/mysqladmin -u root password 'new-password'
# ./bin/mysqladmin -u root -h 47c28848279e password 'new-password'

