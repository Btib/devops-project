Vagrant.configure("2") do |config|
  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "ubuntu/xenial64"
    jenkins.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
    jenkins.vm.network "private_network", ip: "192.168.10.9"
    #jenkins.ssh.username = "jenkins"
    #jenkins.ssh.password = "jenkins"
    jenkins.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
      vb.name = "jenkins"
    end
    jenkins.vm.provision "shell", path: "Jenkins-VM/setup.sh"
  end
  config.vm.define "docker" do |docker|
    docker.vm.box = "ubuntu/xenial64"
    docker.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
    docker.vm.network "private_network", ip: "192.168.10.11"
    #docker.ssh.username = "docker"
    #docker.ssh.password = "docker"
    docker.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
      vb.name = "docker"
    end
    docker.vm.provision "shell", path: "Docker-VM/setup.sh"
  end
end
