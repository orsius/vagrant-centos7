# Data-Essential - Vagrant Template
Vagrantfile Template to setup 3 ore more virtualBox server with centos7

## Requirements

* [Install VirtualBox](https://www.virtualbox.org/manual/ch02.html)
* [Install Vagrant](https://www.vagrantup.com/docs/installation/)

## Technology used

* [centos7](https://access.redhat.com/downloads)

## Running

* Clone the repository.
  Enter the new created folder and adapt the hostnames, ips, nbr of VMs and accordingly to your needs.
    (simply vi on the file: 'vagrant-bootstrap-centos7.sh')

* Run the instance.

```sh
$ vagrant up
$ vagrant status
$ vagrant ssh <name of the VMs>
```

* stop the VMs:

```sh
$ vagrant destroy -f
```

## Official docs

more information can be found under
* [vagrant Official website](https://www.vagrantup.com/docs/)
* [Data-Essential blog](https://www.data-essential.com/category/blog/)
