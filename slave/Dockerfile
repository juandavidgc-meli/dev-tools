FROM gradle:6-jdk11
LABEL maintainer="1P Experts Team"

USER root

ARG user=jenkins
ARG group=jenkins
ARG uid=10000
ARG gid=10000

RUN groupadd -g ${gid} ${group}
RUN useradd -c "Jenkins user" -d /home/${user} -u ${uid} -g ${gid} -m ${user}

USER jenkins
ENV GRADLE_USER_HOME /home/jenkins/.gradle
WORKDIR /home/jenkins

CMD ["/bin/sh"]
