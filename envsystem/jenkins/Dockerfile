#FROM jenkins/jenkins:2.346.3-jdk11
FROM jenkins/jenkins:2.375.1
USER root
RUN apt-get update && apt-get install -y lsb-release

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
https://download.docker.com/linux/debian \
$(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli

#Time Zone 변경
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


### SSH 설치
RUN apt-get update
RUN apt-get install -y openssh-server 

RUN mkdir /var/run/sshd

#set password
RUN echo 'root:root' |chpasswd

#replace sshd_config
#sed는 replace시켜주는 구문인데 PermitRootLogin과 yes로, UsePAM을 주석처리하는 것이다.
RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

#make .ssh
RUN mkdir /root/.ssh
#기동시 
#CMD ["/usr/sbin/sshd", "-D"] 
#RUN /usr/sbin/sshd -D
USER jenkins

#RUN jenkins-plugin-cli --plugins "blueocean:1.25.6 docker-workflow:1.29"
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow"