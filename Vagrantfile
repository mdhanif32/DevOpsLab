# -*- mode: ruby -*-
# # vi: set ft=ruby :

# Specify minimum Vagrant version and Vagrant API version
Vagrant.require_version ">= 1.6.0"
VAGRANTFILE_API_VERSION = "2"

# Require YAML module
require 'yaml'

# Read YAML file with box details
servers = YAML.load_file('servers_config.yaml')

# Create boxes
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Iterate through entries in YAML file
  servers.each do |servers|
    config.vm.define servers["name"] do |srv|
      #to enable GUI mode
      ##config.vm.provider "virtualbox" do |vb|
        ##vb.gui = true
      ##end
      #srv.vm.box = "bento/ubuntu-18.04"
      srv.vm.box = "bento/ubuntu-20.04"
      #config.vm.box_download_insecure=true
      srv.vm.synced_folder servers["name"], "/home/vagrant", create: true 
	    config.vm.hostname = servers["name"]
      #config.vm.boot_timeout = 600


      if servers["network_type"] == "public"
	      srv.vm.network "public_network"
      elsif servers["network_type"] == "private"
          srv.vm.network "private_network", ip: servers["ip"]
      else
          raise 'An error has occuered. The value of network type should be either private or public'
      end
	    srv.vm.provider :virtualbox do |vb|
         vb.name = servers["name"]
         vb.memory = servers["ram"]
      end
      srv.vm.provision :"shell", path: "./scripts/install_components.sh"
    end
  end
end
