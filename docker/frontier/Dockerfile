FROM centos:centos7

# Install frontier-squid RPMs
RUN yum install -y http://frontier.cern.ch/dist/rpms/RPMS/noarch/frontier-release-1.1-1.noarch.rpm && \
    yum install -y frontier-squid

RUN yum clean all

ADD run-squid.sh /usr/local/bin/run-squid.sh

# fnget file. Useful for testing if frontier works
ADD fnget.py /usr/local/bin/fnget.py
RUN chmod +x /usr/local/bin/fnget.py

CMD source /usr/local/bin/run-squid.sh