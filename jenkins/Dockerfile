FROM jenkins/jenkins:lts-jdk17

USER root


RUN apt-get update && \
    apt-get install -y \
    git \
    maven \
    python3 \
    python3-pip \
    && apt-get clean


RUN curl -fsSL https://download.docker.com/linux/static/stable/$(uname -m | sed 's/x86_64/x86_64/;s/aarch64/aarch64/')/docker-20.10.9.tgz | \
    tar -xz -C /usr/local/bin --strip-components=1 docker/docker && \
    chmod +x /usr/local/bin/docker


RUN groupadd docker || true && \
    usermod -aG docker jenkins

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/