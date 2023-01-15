#Docker slave 관련
docker build -t jcscom13/my-slave:1.0 -f Dockerfile_jenkins_slave .

docker run --privileged --name jenkins-node1 -it -p 30022:22 \
       -e container=docker -v /sys/fs/cgroup:/sys/fs/cgroup --cgroupns=host \
       jcscom13/my-slave:latest /usr/sbin/init 




  