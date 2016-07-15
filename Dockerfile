FROM centos:latest

RUN yum install -y rpm-build

WORKDIR /root/rpmbuild
ENTRYPOINT ["rpmbuild"]