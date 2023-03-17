# -*- mode: ruby -*-
# vi: set ft=ruby :

OPEN_PORT1 = "80"
OPEN_PORT2 = "81"
OPEN_PORT3 = "82"
OPEN_PORT4 = "83"
OPEN_PORT5 = "84"
IP =  "192.168.58.93"   # Don't change!
CPU_CORES_COUNT = "4"   # Cnahge if necessary
MEMORY_COUNT = "4096"   # Cnahge if necessary

# create machines config
Vagrant.configure(2) do |config|
    config.vm.box = "fasmat/ubuntu2204-desktop"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder ".", "/mnt", type: "virtualbox"
        # for connect with SSH on both machines with no password
        id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
        config.vm.provision "copy ssh public key", type: "shell",
        inline: "echo \"#{id_rsa_pub}\" >> /home/vagrant/.ssh/authorized_keys"
    end

  # master node config
    config.vm.define 'ubuntu' do |ubuntu|
        ubuntu.vm.network :private_network, ip: IP
        ubuntu.vm.synced_folder "project",
        "/home/vagrant/project"
        ubuntu.vm.hostname = "ubuntu-22.04"
        debian.vm.provision "shell",
        privileged: true, path: "setup.sh"
        debian.vm.network "forwarded_port",
        guest: OPEN_PORT1, host: OPEN_PORT1
        debian.vm.network "forwarded_port",
        guest: OPEN_PORT2, host: OPEN_PORT2
        debian.vm.network "forwarded_port",
        guest: OPEN_PORT3, host: OPEN_PORT3
        debian.vm.network "forwarded_port",
        guest: OPEN_PORT4, host: OPEN_PORT4
        debian.vm.network "forwarded_port",
        guest: OPEN_PORT5, host: OPEN_PORT5
        ubuntu.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--vram", "32"]
            v.name = "ubuntu_22.04"
            v.memory = MEMORY_COUNT
            v.cpus = CPU_CORES_COUNT
            v.gui = true
        end
    end

end
