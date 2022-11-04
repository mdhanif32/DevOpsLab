**#DevOpsLab**
DevOps Projects

**STEP-1:**

#Clone repository to local system.

    git clone --branch MKDVSCOS-170 https://github.com/MastekLimited/DevOpsLab.git

**#Prerequisites for infrastructure setup.**


|Sr. No.|      Tool          |	Version	|  RAM	|Disk space  |
|-------|--------------------|----------|-------|------------|
|1	    | Oracle Virtual Box |	6.1.22	| 4 GB	| 40 GB      |
|2	    | HashiCorp Vagrant	 |   2.2.16	| 4 GB	| 40 GB      |


Download & Install latest version of Oracle virtual box and HashiCorp Vagrant on local system.
                           
**Note:**
Recommend to run Virtual box and HasiCorp Vagrant with 60GB disk space and 4GB RAM for better performance, however it can be run on min 512 MB RAM & 10 GB Disk space.

**Files & Directory descriptions:**

**Vagrantfile:** This file contains all configuration to provision the Ubuntu virtual machine on our local system via Oracle virtual box.

**Server_config.yaml:** This files contents name, RAM, IP and network type of virtual machine which to be hosted.

**Ansible:** This directory contents Ansible roles (Docker & container), config files of Ansible application.

**Scripts:** This directory have a script that will use to install updates of Ubuntu system, install Ansible and its dependencies as well installing the Docker and execute the Ansible playbook to create Jenkins & SonarQube containers.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**STEP-2:**

Open the command prompt on local system and switch to the directory where files cloned or pulled.

> d: (switch to drive)

> cd directory_name ( to switch into directory)

> ![image](https://user-images.githubusercontent.com/84716970/125055823-3bb79c00-e0c5-11eb-8614-b1079fc07b47.png)




-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**STEP-3:** 

Execute the command **“vagrant up”** (this command will be download the image of Ubuntu and provision the virtual machine on virtual box. 

![image](https://user-images.githubusercontent.com/84716970/125056474-e5972880-e0c5-11eb-8958-679a41e4f5b3.png)

Once machine will up and running, execute the below command.

>vagrant ssh (to connect virtual host)

![image](https://user-images.githubusercontent.com/84716970/125056594-03fd2400-e0c6-11eb-84e7-97624ed20a25.png)


**Note:**

Vagrant user is default user of virtual machine, to switch into root user execute “sudo –i” or “sudo –s” command. 
Once Virtual machine UP & running then follow the next step to copy Ansible & script directories into /vagrant/ directory of virtual machine via WinScp or FileZilla.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**STEP-4:**

Execute the below command and capture the IP Address of virtual machine then follow the next steps.

    ip r l #(take IP of eth1 (Ethernet1)

![image](https://user-images.githubusercontent.com/84716970/125056867-4a528300-e0c6-11eb-9af4-45214afb0c9e.png)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**STEP-5:**

**a)** Open FileZilla or WinScp and enter the IP into host section as well username & password of virtual machine.  

    Host: IP Address of host machine
    Username: vagrant
    Password: default
    Port: 22

FileZilla Connection:

Open FileZilla, enter above details and click on Quikconnect.

![image](https://user-images.githubusercontent.com/84716970/125057021-6ce49c00-e0c6-11eb-92ec-2e411d45f175.png)


**b)** Upload Ansible & script directory from local system to virtual machine into /home/vagrant.

**Note:** This is one time task while provision of new virtual machine.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**STEP-6:**

**a)** Login to virtual machine as default user vagrant and its home directory /home/vagrant.

![image](https://user-images.githubusercontent.com/84716970/125057489-ed0b0180-e0c6-11eb-9941-a9034724ce59.png)


**b)**  Now copy Ansible directory from /home/vagrant to /vagrant path by executing below copy command.

       sudo cp -r ansible /vagrant #(using sudo for root privileged)

![image](https://user-images.githubusercontent.com/84716970/125057597-090ea300-e0c7-11eb-857c-d87c2c8a1832.png)


Switch to the root user to verify if ansible directory copied in /vagrant.

    sudo -i #Or sudo –s

![image](https://user-images.githubusercontent.com/84716970/125057668-1e83cd00-e0c7-11eb-945f-261f7e6f8300.png)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**STEP-7:**

Now execute "install_components.sh" from /home/vagrant/scripts to update the system library, install Ansible & its dependencies and trigger the Ansible playbook to install Docker and create the Jenkins and SonarQube containers.

vagrant@academy:~/scripts$ pwd

/home/vagrant/scripts

vagrant@academy:~/scripts$ sh install_components.sh

![image](https://user-images.githubusercontent.com/84716970/125057773-39eed800-e0c7-11eb-8b97-908f54a8fa8c.png)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**STEP-8:**

Verify if containers up and running by executing the Docker command.

$docker ps  (to check running containers)

![image](https://user-images.githubusercontent.com/84716970/125058265-bd102e00-e0c7-11eb-9abe-7017580ae903.png)


**Some important commands for Docker.**

 |   Command                           |      use	                     |      Example                   |
 |-----------------------------------  |---------------------------------|--------------------------------|                    
 |  docker images	                   | To show the container images	 |  $docker images                |
 |  docker ps 	                       |To check running containers	     |  $docker ps                    |
 |  docker ps –a	                   | To get all the containers	     |  $docker ps -a                 |
 |  docker  logs -f contaioner_name	   | To check logs of the container	 |  $docker logs -f jenkins       |
 |  docker stop container_name	       | To stop the container	         |  $docker stop jenkins          | 
 |  docker start container_name	       |To start the container	         |  $docker start jenkins         |
 |  docker exec -it conatiner_name bash|	To login inside the container|  $docker exec -it jenkins bash |
 |  docker rm conatiner_name	       |To delete the container	         |  $docker rm jenkins            |
 |  docker rmi image_id	               | To delete the container image	 |  $docker rmi 0a6ee130181b      | 


-------------------------------------------------**2.Jenkins Configuration as code**----------------------------------------------

The Configuration as Code plugin can be used to manage the global system configuration of Jenkins. It comes with an integration for Job DSL to create an initial set of jobs.
We automate the installation and configuration of Jenkins using Docker and the Jenkins Configuration as Code (JCasC) method.

**a)** Jenkins uses a pluggable architecture to provide most of its functionality. JCasC makes use of the Configuration as Code plugin, which allows us to define the desired state of Jenkins configuration as one or more YAML file(s), eliminating the need for the setup wizard. On initialization, the Configuration as Code plugin would configure Jenkins according to the configuration file(s), greatly reducing the configuration time and eliminating human errors.

**2.1)Pre-requisites: for Environment setup**


![image](https://user-images.githubusercontent.com/84716970/125058702-2a23c380-e0c8-11eb-8532-ddf9d9a05e08.png)

**2.2)**  need four GitHub repositories for source code management.

a)	Source code for Infrastructure setup

    https://github.com/MastekLimited/DevOpsLab.git

b)	Source code for Pipeline job setup (Job as code)

    https://github.com/MastekLimited/JCASC-jobdsl.git

c)	Source code for pipeline as code

    https://github.com/MastekLimited/JCASC-jenkinsfile.git

d)	Java source code for build application package.

    https://github.com/MastekLimited/application_repo.git


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**2.3)**	Login to Ubuntu virtual machine and create a plugins.txt file and mentioned all necessary plugins into plugins.txt file to automate plugins installation during Docker images building. The list of plugins can be listed in a plugins.txt file which looks as follows:

  cd /vagrant/ansible

  vi plugins.txt

    ant:latest
    antisamy-markup-formatter:latest
    build-timeout:latest
    cloudbees-folder:latest
    configuration-as-code:latest
    credentials-binding:latest
    docker-plugin:latest
    docker-workflow:latest
    docker-build-step:latest
    email-ext:latest
    git:latest
    git-client:latest
    git-server:latest
    github-branch-source:latest
    gradle:latest
    job-dsl:latest
    ldap:latest
    maven-plugin:latest
    mailer:latest
    matrix-auth:latest
    pam-auth:latest
    pipeline-github-lib:latest
    pipeline-stage-view:latest
    publish-over-ssh:latest
    sonar:latest
    sonar-quality-gates:latest
    ssh-slaves:latest
    ssh-steps:latest
    ssh-agent:latest
    ssh2easy:latest
    timestamper:latest
    workflow-aggregator:latest
    workflow-job:latest
    workflow-cps:latest
    ws-cleanup:latest
    xml-job-to-job-dsl:latest

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**2.4)**	Create jenkins.yaml file to automate the Jenkins configurations like global configuration tools, credentials, job-dsl script to create super-seed job and security.

    jenkins:
    #jenkins dashboard message
    systemMessage: "Configured as Code"

    #jenkins global tools configuration.
    tool:
     dockerTool:
      installations:
      - name: "docker"
       properties:
       - installSource:
           installers:
           - fromDocker:
               version: "latest"
    git:
     installations:
     - home: "git"
       name: "Default"
    maven:
     installations:
     - name: "maven3"
       properties:
       - installSource:
           installers:
           - maven:
               id: "3.8.1"
    mavenGlobalConfig:
     globalSettingsProvider: "standard"
     settingsProvider: "standard"
    sonarRunnerInstallation:
     installations:
     - name: "sonarqube"
       properties:
       - installSource:
           installers:
           - sonarRunnerInstaller:
               id: "4.6.2.2472"

    # Global credentials setup
    credentials:
     system:
      domainCredentials:
      - credentials:
        - usernamePassword:
           id: "mastek"
           password: "{password}"
           scope: GLOBAL
           username: "shiv14862"

    #Jobdsl script to created super-seed job during Jenkins up.
    jobs:
    - script: >
      job('super-seed') {
        scm {
          git {
            remote {
            url ('https://github.com/MastekLimited/JCASC-jobdsl.git')
              credentials('mastek')
            }
          }
        }
          steps {
          dsl {
            external('jobdsl/**/*.groovy')
            removeAction('DELETE')
            removeViewAction("DELETE")
            }
          }
          }

    # security implemented for script approval matrix.
    security:
     globaljobdslsecurityconfiguration:
      useScriptSecurity: false



    
    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**2.5)Create Dockerfile which looks like…**

    #Jenkins image

    FROM jenkins/jenkins:lts-jdk11

    #copy the list of plugins we want to install

    COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

    #run the install-plugins script to install the plugins

    RUN  /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

    #disable the setup wizard as we will set up Jenkins as code)

    ENV JAVA_OPTS -Djenkins.install.runSetupWizard=true

    #copy the config-as-code yaml file into the image

    COPY jenkins.yaml /var/jenkins_home/jenkins.yaml

    #tell the jenkins config-as-code plugin where to find the YAML file

    ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Dockerfile, plugins.txt, jenkins.yml, roles and setup.yml files are part of /vagrant/ansible.**

![image](https://user-images.githubusercontent.com/84716970/125059115-9d2d3a00-e0c8-11eb-992f-3349b2ea8307.png)


------------------------------------------------------------**3. Describe Ansible playbook scripts and roles**--------------------------------------------------

**3.1)**	Ansible Docker role have two task files main.yml and ubuntu.yml. 

**Path of Docker roles:**

![image](https://user-images.githubusercontent.com/84716970/125059167-a8806580-e0c8-11eb-931d-845eaad808c1.png)

                
**ubuntu.yml** contains installation of Docker & its dependencies and adding vagrant user into Docker group.

**main.yml** contains Ubuntu distribution to execute ubuntu.yml file.


**ubuntu.yml:**

    ---

    - name: Install the dependencies
      apt:
      name: "{{item}}"
      state: present
     with_items:
     - apt-transport-https
     - ca-certificates
     - curl
     - gnupg
     - lsb-release
     - python-pip

    - name: Add an Apt signing key to a specific keyring file
      apt_key:
      url: https://download.docker.com/linux/ubuntu/gpg
      keyring: /usr/share/keyrings/docker-archive-keyring.gpg
      state: present

    - name: Set the stable repository
      shell: echo \
          deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
          $(lsb_release -cs) stable | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    - name: Update cache
      apt:
       update_cache: yes

    - name: Install Docker
      apt:
        name: "{{item}}"
        state: present
      with_items:
      - docker-ce
      - docker-ce-cli
      - containerd.io

    - name: Install docker-py
      pip:
         name: docker

    - name: Add user vagrant to docker group
      user:
         name: "{{item}}"
         groups: docker
         append: yes
      become: yes
      with_items:
      - vagrant


 
main.yml
    ---

    - name: Execute the steps on Ubuntu

      include: ubuntu.yml
  
      when: ansible_distribution == "Ubuntu"
  

**3.2)**	Ansible container role defined tasks in main.yml to build the Jenkins image and create Jenkins & SonarQube containers. 

vagrant@academy:/vagrant/ansible/roles/container/tasks$ ls -lrt

total 4

-rw-r--r-- 1 root root 1256 Jun 14 04:18 main.yml

vagrant@academy:/vagrant/ansible/roles/container/tasks$

**main.yml**

    ---

    # tasks file for container-install

    - name: Create the directories

      file:
  
       path: "/vagrant/sandbox/{{ item }}"
    
       mode: '0755'
    
       state: directory
    
      with_items:
  
      - jenkins
 
      - sonar

    # - nexus


    - name: building jenkins image

      shell: docker build  -t jenkins:jcasc .
  

    - name: Create Jenkins container

      docker_container:
  
        name: jenkins
    
        image: jenkins:jcasc
    
        state: started
    
        recreate: no
    
        published_ports:
    
        - 8080:8080
    
        volumes:
    
        - /vagrant/sandbox/jenkins:/var/jenkins

    - name: Create Sonarqube container

      docker_container:
  
        name: sonarqube
    
        image: sonarqube:lts
    
        state: started
    
        recreate: no
    
        published_ports:
    
        - 9000:9000
  
        volumes:
    
        - /vagrant/sandbox/sonar/data:/opt/sonarqube/data
   
        - /vagrant/sandbox/sonar/logs:/opt/sonarqube/logs
   
        - /vagrant/sandbox/sonar/extensions:/opt/sonarqube/extensions
        

**3.3)**	**Setup.yml ** file is responsible to execute the Docker and container roles from /vagrant/ansible/setup.yml.

![image](https://user-images.githubusercontent.com/84716970/125060022-90f5ac80-e0c9-11eb-9093-be05d422ec1b.png)




