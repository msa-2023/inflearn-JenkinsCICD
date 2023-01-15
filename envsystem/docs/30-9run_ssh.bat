docker run --name ssh-docker --restart=on-failure --detach ^
  --privileged ^
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 ^
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 ^
  --volume jenkins-docker-certs:/certs/client:ro ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/var:/var/jenkins_home ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/home:/home ^
  --publish 2202:22  --publish 8082:8080  ^
  ssh-docker:1.0

  