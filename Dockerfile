FROM jenkins/jnlp-slave:latest-jdk11

# For testing purpose only
COPY empty-test-file /jenkins-slave1
RUN apt-get update && apt-get install docker -y


ENTRYPOINT ["jenkins-slave"]