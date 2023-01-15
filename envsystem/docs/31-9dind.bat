docker run --name mydind --restart=on-failure -d ^
  --privileged ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/home:/home ^
  --publish 2203:22  --publish 8083:8080  ^
  mydind:1.0


  