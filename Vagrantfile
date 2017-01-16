# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
BOX_IMAGE = "centos/7"
NODE_COUNT = 3

cluster = {
  "centos-es-04" => { :ip => "192.168.1.84", :cpus => 1, :mem => 1024 },
  "centos-es-05" => { :ip => "192.168.1.85", :cpus => 1, :mem => 1024 }
}

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  cluster.each_with_index do |(hostname, info), index|

    config.vm.define hostname do |cfg|
      cfg.vm.provider :virtualbox do |vb, override|
        config.vm.box = BOX_IMAGE
        override.vm.network "public_network", bridge: "en0: Wi-Fi (Airport)", ip: "#{info[:ip]}"
        override.vm.hostname = hostname
        vb.name = hostname
        vb.customize ["modifyvm", :id, "--memory", info[:mem], "--cpus", info[:cpus], "--hwvirtex", "on"]
      end # end provider

    config.vm.provision "shell", path: "vagrant-bootstrap-centos7.sh"

    end # end config
  end # end cluster
end
