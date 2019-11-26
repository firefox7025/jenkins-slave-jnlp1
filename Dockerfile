FROM jenkins/jnlp-slave:latest-jdk11

# For testing purpose only
USER root
RUN apt-get update
RUN curl https://sh.rustup.rs -sySf | sh
RUN apt-get install nodejs -y 

ENTRYPOINT ["jenkins-slave"]