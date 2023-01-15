docker build -t mydind-ssh:1.0 -f Dockerfile-dind-ssh .

docker run --name mydind-ssh --restart=on-failure -d ^
  --privileged ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/home:/home ^
  --publish 2204:22  --publish 8084:8080  ^
  mydind-ssh:1.0


  