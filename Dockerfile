FROM jenkins/jenkins:lts

USER root
RUN apt-get update && \
  apt-get install -y curl sudo && \
  curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh

RUN echo "jenkins ALL= NOPASSWD: ALL" >> /etc/sudoers
USER jenkins

EXPOSE 8080 50000 80 443
