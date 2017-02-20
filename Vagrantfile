VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "win10"
  config.vm.hostname = "win10"
  config.vm.network :private_network, ip: "10.10.10.10"
  config.vm.communicator = "winrm"
  config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", 2048]
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--vram", "32"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      # vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" 
  end
  config.vm.provision "shell", path: "scripts/provision.ps1",  privileged: true 
end
