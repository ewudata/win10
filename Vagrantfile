VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "Microsoft/EdgeOnWindows10"
  config.vm.hostname = "win10"
  config.vm.network "private_network", type: "dhcp"
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.winrm.username = "IEUser"
  config.winrm.password = "Passw0rd!"
  
  config.windows.halt_timeout = 15
  config.vm.boot_timeout = 500

  config.vm.provider "virtualbox" do |vb|
      vb.linked_clone = true
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", 2048]
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all"]
  end
  # config.vm.provision "shell", path: "provision.ps1",  privileged: false 

end
