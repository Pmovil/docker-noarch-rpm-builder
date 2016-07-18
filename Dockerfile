FROM centos:latest

RUN yum install -y rpm-build \
	redhat-rpm-config

RUN mkdir -p /root/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}

WORKDIR /root/rpmbuild/SPECS

ENTRYPOINT ["rpmbuild"]

VOLUME ['/root/rpmbuild/SOURCES', '/root/rpmbuild/RPMS']