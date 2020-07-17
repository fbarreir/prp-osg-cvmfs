FROM centos:centos7

# Install frontier-squid RPMs
RUN yum install -y http://frontier.cern.ch/dist/rpms/RPMS/noarch/frontier-release-1.1-1.noarch.rpm && \
    yum install -y frontier-squid

RUN yum clean all

ADD run-squid.sh /usr/local/bin/run-squid.sh

CMD source /usr/local/bin/run-squid.sh