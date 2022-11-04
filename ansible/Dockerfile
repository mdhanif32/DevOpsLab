FROM jenkins/jenkins:lts-jdk11
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=true
COPY jenkins.yaml /var/jenkins_home/jenkins.yaml
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml


