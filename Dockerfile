FROM debian:jessie
MAINTAINER Tristan Mahe <gled@remote-shell.net>

RUN apt-get update
RUN apt-get install -y lsb-release wget paxctl git
RUN cd /usr/src/
ADD install-cdr-stats.sh /usr/src/install-cdr-stats.sh
ADD cdr-stats-functions.sh /usr/src/cdr-stats-functions.sh
RUN chmod 755 /usr/src/install-cdr-stats.sh
RUN git clone https://github.com/cdr-stats/cdr-stats.git
ADD django.txt /usr/src/cdr-stats/requirements/django.txt
#RUN /usr/src/install-cdr-stats.sh

EXPOSE 80 8080 8008 5432

CMD ["/sbin/init"]

# to run
# docker run -d -P paxmanchris/docker_cdr-stats

# to shell
# docker exec -it <container>  bash 
