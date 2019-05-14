# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu16-04"
  config.vm.synced_folder "~/ctfs", "/home/vagrant/ctfs"
  # additions version when booting this machine
  config.vbguest.auto_update = false
  # do NOT download the iso file from a webserver
  config.vbguest.no_remote = true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false 
 
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.provision "file", source: "./provision-script", destination: "/tmp/provision-script"
  config.vm.provision "shell", :path => "./provision-script/init.sh", :privileged => false
end
