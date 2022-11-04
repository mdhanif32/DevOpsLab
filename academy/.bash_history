exit
ls -rt
ls
sudo -i
cd /home/
cd vagrant/
ls -lrt
cd scripts/
sh install_components.sh 
vi install_components.sh 
cd ..
ls -lrt
pwd
cd ansible/
ls -lrt
pwd
cd ..
cd scripts/
ls -lrt
vi install_components.sh 
sh install_components.sh 
vi install_components.sh
sh install_components.sh 
cd ..
ls -lrt
cd ansible/
ls -lrt
cd cd roles/
cd roles/
ls -lrt
cd container/
ls -lrt
cd tasks/
ls -lrt
vi main.yml 
cd ..
cd ..
cd docker/
ls -lrt
cd tasks/
ls -lrt
vi main.yml 
vi ubuntu.yml 
cd ..
cd ..
cd ..
cd ..
ls -lrt
cd ansible/
ls -lrt
vi setup.yml 
vi setup.yml 
cd ..
cd cri
cd scripts/
ls -lrt
sh install_components.sh 
ansible -v
ansible --version
python -v
python --version
python -V
cd ../ansible/
ls -lrt
cd roles/
ls -lrt
cd docker/
ls -lrt
cd tests/
ls -lrt
cd ..
cd tasks/
ls -lrt
cd ubuntu.yml 
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
docker ps
ls -lrt
vi ubuntu.yml 
exit
ls -lrt
ls -lrt
docker ps
cd /home/vagrant/ansible/roles/docker/
ls -lrt
cd vars/
ls -lrt
vi main.yml
cd ..
ls -lrt
cd tasks/
vi ubuntu.yml 
vi jenkins.yml
vi jenkins.yml 
mv jenkins.yml jenkins.yml_old 
ls -lrt
vi ubuntu.yml 
vi jenkins.yml_old jenkins.yml
mv jenkins.yml_old jenkins.yml
ls -lrt
cat jenkins.yml >> ubuntu.yml 
ls -lrt
vi ubuntu.yml 
sh /home/vagrant/scripts/
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml 
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
ls -lrt
cd ..
ls -lrt
cd vars/
ls -lrt
vi main.yml 
ls -lrt
cd ..
cd ..
cd docker/
sh /home/vagrant/scripts/install_components.sh 
cd tasks/
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml 
sh /home/vagrant/scripts/install_components.sh 
vi ubuntu.yml 
exit
vagrant plugin install vagrant-vbguest
exit
ls -lrt
mkdir mavan
cd mavan/
wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
tar -xvf apache-maven-3.8.6-bin.tar.gz
mv apache-maven-3.8.6 /opt/
ls -lrt
mv apache-maven-3.8.6 /opt/
sudo mv apache-maven-3.8.6 /opt/
export PATH=/opt/apache-maven-3.8.6/bin:$PATH
mvn -v
export PATH=/usr/lib/jvm/java-11-openjdk-amd64/bin:$PATH
echo JAVA_HOME
echo $JAVA_HOME
cd /usr/lib/jvm/java-11-openjdk-amd64
ls -lrt
mvn -v
cd ..
cd ..
cd ..
cd ..
cd
ls -lrt
cd flyway
mkdir flyway
cd flyway/
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/9.1.6/flyway-commandline-9.1.6-linux-x64.tar.gz | tar xvz && sudo ln -s `pwd`/flyway-9.1.6/flyway /usr/local/bin 
flyway --version
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/9.1.6/flyway-commandline-9.1.6-linux-x64.tar.gz | tar xvz && sudo ln -s `pwd`/flyway-9.1.6/flyway /usr/local/bin 
sudo wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/9.1.6/flyway-commandline-9.1.6-linux-x64.tar.gz | tar xvz && sudo ln -s `pwd`/flyway-9.1.6/flyway /usr/local/bin 
sudo -i
cd
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
exit
chmod 0600 ~/.ssh/authorized_keys
ls -lrt
ls -a
ls -lrt
cd /va
/home/
cd /home/
ls -lrt
ls -al
sudo -i
exit
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
curl --insecure -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt install ca-certificates
sudo apt-get update
sudo apt-get install jenkins
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
curl --insecure -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get update -y
sudo apt-get upgrade -y
sudo -i
exit
vagrant plugin install vagrant-vbguest
exit
ls -lrt
cd mavan/
ls -lrt
tar -xvf apache-maven-3.8.6-bin.tar.gz
mv apache-maven-3.8.6 /opt/
sudo mv apache-maven-3.8.6 /opt/
export PATH=/opt/apache-maven-3.8.6/bin:$PATH
mvn -v
apt-get install git
sudo apt-get install git
add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:git-core/ppa
apt remove git
apt-get remove git
sudo apt-get remove git
git --version
sudo apt-add-repository ppa:git-core/ppa
sudo apt update
sudo apt install git=1:2.36.0-0ppa1~ubuntu20.04.1
cd
sudo apt update
sudo apt install libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc
mkdir tmp
cd /tmp
curl -o git.tar.gz https://www.kernel.org/pub/software/scm/git/git-2.37.3.tar.gz
tar -zxf git.tar.gz
ls -lrt
curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.37.3.tar.gz
exit
udo apt update
sudo apt update
udo apt install openjdk-11-jre
sudo apt install openjdk-11-jre
java -version
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get update
sudo apt-get install jenkins
sudo apt-get install jenkins
apt-get update
sudo apt-get install jenkins
sudo apt-get install jenkins
sudo -i
exit
curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.37.3.tar.gz
tar -zxf git.tar.gz
ls -lrt
rm -rf git-2.37.3/
tar -zxf git.tar.gz
sudo tar -zxf git.tar.gz
sudo apt install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev make gettext libz-dev libssl-dev libghc-zlib-dev
ls -lrt
rm -rf git*
cd te
cd tmp/
ls -lrt
cd..
cd .
cd ..
ls -lrt
cd tmp
ls
cd ..
ls -lrt
wget -c https://github.com/git/git/archive/refs/tags/v2.37.3.tar.gz -O - | sudo tar -xz -C /usr/src
cd /usr/src/git-*
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install
git --version
git 
history
mvn -v
mvn -V
cd 
cd mavan
ls -lrt
tar -xvf apache-maven-3.8.6-bin.tar.gz
mv apache-maven-3.8.6 /opt/
sudo mv apache-maven-3.8.6 /opt/
cd /opt/
ls -lrt
cd
cd mavan/
export PATH=/opt/apache-maven-3.8.6/bin:$PATH
mvn -v
su - jenkins
su jenkins
su - vagrant
exit
exit
sudo -i
sudo -i
exit
ip r l
whereis maven
whereis mnv
which maven
mvn -v
mvn -V
sudo -i
exit
ip r l
mvn -v
java -version
cd mavan/
ls -lrt
sudo mv apache-maven-3.8.6 /opt/
export PATH=/opt/apache-maven-3.8.6/bin:$PATH
mvn-v
mvn -v
mvn -v
echo $PATCH
echo $PATH
cd /usr/lib/jvm/java-11-openjdk-amd64
ls -lrt
export PATH=/usr/lib/jvm/java-11-openjdk-amd64/bin:$PATH
ls -lrt
java -version
cd usr/lib/jvm
cd
cd /usr/lib/jvm
ls -rt
cd java-1.11.0-openjdk-amd64
ls -lrt
cd ..
cd java-11-openjdk-amd64
ls -lrt
sudo -i
exit
sudo sonaruser
su sonaruser
cat /etc/passwd
exit
sudo -i
ls -rt
terraform
mvn
mvn
cd
sudo -i
exit
top
exit
top
exit
vi shell.sh
sh shell.sh 
./shell.sh 
vi shell.sh
sh shell.sh 
cat >> file1.txt
cat >> file2.txt
diff file1.txt file2.txt > /dev/null 2>&1 &&  echo "files are diff"
diff file1.txt file2.txt > /dev/null 2>&1 &  echo "files are diff"
ls -t
ls -lrt
ls -t
alias rm_latest="rm \"$PWD/'ls -t | head -1'\" "
ls -t
rm \"$PWD/'ls -t | head -1'\" "

ls -t
rm \"$PWD/\'ls -t | head -1'\" "


rm \"$PWD/'ls -t | head -1'\" "


rm \"'ls -t | head -1'\" "

rm \"\'ls -t | head -1'\" "

ls -t
head -n 10 file1.txt | wc -w
sh -c
set -v
sh shell.sh 
sh shell.sh 
sh -v shell.sh 
set -v shell.sh 
sh shell.sh 
ip r l
cd /var/lib/jenkins/workspace/device-farm-test-automation
ls -rt
cd target/
ls -lrt
du -sh zip-with-dependencies.zip
du -h zip-with-dependencies.zip
du zip-with-dependencies.zip
ls -ah
ls -lh
ls -lrt
ls -lrt
cd 
cd android_build
mkdir android_buid
cd android_buid/
vi Dockerfile
docker build -t android-build-env .
cd /var/lib/jenkins/workspace/device-farm-test-automation
ls -lrt
cd target/
ls -lrt
du -h zip-with-dependencies.zip
cd
cd /var/lib/jenkins/workspace/device-farm-test-automation
cd target/
ls -lrt
du -h zip-with-dependencies.zip
cd
docker login  cicd.p.platform.morconnect.com/nexus/repository/
docker login cicd.p.platform.morconnect.com/nexus/repository/
exit
sudo -i
exit
sudo -i
sudo -i
exit
sudo -i
