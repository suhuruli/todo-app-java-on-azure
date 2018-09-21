FROM ubuntu:16.04

RUN apt update
RUN apt install -y openssh-server curl libc++1 cifs-utils
RUN apt install -y libssh2-1 libunwind8 libib-util
RUN apt install -y lttng-tools lttng-modules-dkms liblttng-ust0 chrpath sshpass
RUN apt install -y cgroup-bin acl net-tools apt-transport-https rssh libcurl3 openjdk-8-jre

COPY target/AppPkg /Code
COPY entryPoint.sh /Code
WORKDIR /Code
ENTRYPOINT ["./entryPoint.sh"]
