VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "win10"
  config.vm.hostname = "win10"
  config.vm.network "private_network", type: "dhcp"
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.windows.halt_timeout = 15

  config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", 2048]
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--vram", "32"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all"]
  end
  config.vm.provision "shell", path: "provision.ps1",  privileged: false 
end
