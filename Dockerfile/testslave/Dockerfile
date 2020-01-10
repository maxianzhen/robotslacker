FROM ubuntu:latest

# setup proxy
ENV http_proxy=http://www-proxy-hqdc.us.oracle.com:80
ENV https_proxy=http://www-proxy-hqdc.us.oracle.com:80
ENV HTTP_PROXY=http://www-proxy-hqdc.us.oracle.com:80
ENV HTTPS_PROXY=http://www-proxy-hqdc.us.oracle.com:80
ENV DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt-get update
RUN apt-get install -y net-tools vim tzdata firefox
RUN apt-get install -y openjdk-11-jdk tigervnc-viewer vnc4server
RUN apt-get install -y libpython2.7 python3.6 python3-pip
RUN apt-get install -y libopencv3.2-java
RUN ln -s /usr/lib/jni/libopencv_java320.so /usr/lib/libopencv_java.so
RUN apt-get install -y maven
RUN pip3 install robotframework-comparelibrary
RUN pip3 install robotframework-seleniumlibrary
RUN pip3 install robotframework-sshlibrary
RUN pip3 install robotframework-Sikulilibrary
RUN pip3 install webdrivermanager
RUN webdrivermanager firefox --linkpath /usr/bin

# set vnc password to welcome
RUN mkdir -p /root/.vnc
COPY vncpasswd /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd

RUN \
mkdir -p /usr/local/SikuliX/jlib   && \
mkdir -p /usr/local/SikuliX/bin
COPY sikulix-2.0.1.jar /usr/local/SikuliX/jlib
COPY jython-standalone-2.7.1.jar /usr/local/SikuliX/jlib

RUN unset http_proxy
RUN unset https_proxy
RUN unset HTTP_PROXY
RUN unset HTTPS_PROXY
RUN unset DEBIAN_FRONTEND

ENTRYPOINT ["/bin/bash", "-c", "echo Hello RobotSlacker."]