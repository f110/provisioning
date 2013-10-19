# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "fedora19"
  config.vm.hostname = "asparagus.local"

  # config.vm.box_url = "http://domain.com/path/to/above.box"

  config.vm.network :private_network, ip: "192.168.50.12"

  #config.vm.network "forwarded_port", guest: 80, host: 8080
  #config.vm.network "forwarded_port", guest: 4567, host: 4567
end
