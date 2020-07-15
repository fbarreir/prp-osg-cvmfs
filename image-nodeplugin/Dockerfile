FROM centos:centos7

# OSG RPMs
RUN yum -y install https://repo.opensciencegrid.org/osg/3.5/osg-3.5-el7-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install osg-oasis

RUN yum clean all

ENV MOUNT_REPOS="atlas.cern.ch,atlas-condb.cern.ch,atlas-nightlies.cern.ch,grid.cern.ch,sft.cern.ch"
ENV SQUID_URI="DIRECT"
ENV QUOTA_LIMIT="4000"

ADD wait-only.sh /usr/local/sbin/wait-only.sh
ADD mount-and-wait.sh /usr/local/sbin/mount-and-wait.sh
ADD unmount-and-terminate.sh /usr/local/sbin/unmount-and-terminate.sh
ADD force_unmount.sh /usr/local/sbin/force_unmount.sh

CMD ["/usr/local/sbin/mount-and-wait.sh"]

