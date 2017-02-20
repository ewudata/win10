VAGRANTFILE_API_VERSION = "2"

$conda_installation = <<SCRIPT
  sudo systemctl disable firewalld
  sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
  # sudo yum -y install bzip2
  # sudo yum -y groupinstall 'Development Tools'
  curl https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh -o anaconda.sh || exit 1;
  bash anaconda.sh -b || exit 1;
  grep -q anaconda ~/.bashrc;
  if [[ ${?} -ne 0 ]]; then
    echo "export PATH=\"${HOME}/anaconda3/bin:\${PATH}\"" >> ~/.bashrc
  fi
  source ~/.bashrc
  conda info || exit 1;
  rm anaconda.sh || exit 1;
  conda clean -t || exit 1;
SCRIPT

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
  config.vm.provision "shell", inline: $conda_installation,  privileged: true
  
end
