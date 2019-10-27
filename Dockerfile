FROM jenkins/jnlp-slave:latest-jdk11

# For testing purpose only
USER root
RUN apt-get update && apt-get install docker -y


ENTRYPOINT ["jenkins-slave"]