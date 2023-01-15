docker build -t my-ansible:1.0 -f Dockerfile_ansible .

docker run --privileged --name ansible-server -itd \
      -p 20022:22 -p 8081:8080 \
      -e container=docker \
      -v /sys/fs/cgroup:/sys/fs/cgroup \
      --cgroupns=host \
      my-ansible:1.0 /usr/sbin/init
	  
docker run --privileged --name my-ansible -it --rm ^
      -p 20022:22 -p 8081:8080 ^
      -e container=docker ^
      -v /sys/fs/cgroup:/sys/fs/cgroup ^
      --cgroupns=host ^
      my-ansible:1.0 /usr/sbin/init	  

systemctl
systemctl enable docker
systemctl enable start
  