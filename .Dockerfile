FROM jenkins/jenkins:lts

USER root

RUN yum update \
  && yum install -y docker \
  && usermod -a -G docker ec2-user \
  && curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` | tee /usr/local/bin/docker-compose > /dev/null \
  && chmod +x /usr/local/bin/docker-compose \
  && service docker start \
  && chkconfig docker on \

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins