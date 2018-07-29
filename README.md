# Spring cloud config-server
Authenticating git via ssh was always a challenge, created this docker images to address git auth via ssh.

More documentation can be found here https://cloud.spring.io/spring-cloud-static/spring-cloud-config/2.0.0.RELEASE/single/spring-cloud-config.html

# Building the jar using Maven
Build your jar first using  Maven `./mvnw package` 

# Docker build image
Once you are done with maven build, you can build the docker image of config server. Simply run `docker build . ` 
Verify the docker build using `docker images` , you can tag the image using the image id `docker tag <image id> config-server`

# Usage
`sudo docker run -it -p 8888:8888 -e GIT_REPO_URL=ssh://git@gitlab.yourdomain.com/AppConfigProperties.git  -e EUREKA_SERVER_URL=http://eureka-host:8761/eureka/  -v ~/.ssh/:/root/.ssh/:ro config-server`

Replace the variables like GIT_REPO_URL and EUREKA_SERVER_URL with appropriate values. ssh keys of local vm should be mounted as a volume to the container.

