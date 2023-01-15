docker run --name jenkins-blueocean --restart=on-failure --detach ^
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 ^
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 ^
  --volume jenkins-docker-certs:/certs/client:ro ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/var:/var/jenkins_home ^
  --volume /d/APP/@inflearn/202212-JenkinsCICD/jenkins_SHARE/home:/home ^
  --publish 2201:22  --publish 8099:8080 --publish 50000:50000 ^
  myjenkins-blueocean:2.375.1-1