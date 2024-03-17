# Vagrant CNN

The CNN Code comes from this repository (https://github.com/Zaikhul/CNN-Classification)

## Installation
- Download Vagrant (https://developer.hashicorp.com/vagrant/install)
- Install Vagrant
  - make sure installation complete on your terminal
    ```
    PS C:\Users\<username>> vagrant
    Usage: vagrant [options] <command> [<args>]

    -h, --help                       Print this help.

    Common commands:
     autocomplete    manages autocomplete installation on host
     box             manages boxes: installation, removal, etc.
     cloud           manages everything related to Vagrant Cloud
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
    ```
- Install VirtualBox

## Configuration
Please consider this configuration on your PC based on your system requirements

```
  (1..3).each do |i| <- change the number according to your number of VMs (e.g 4 VMs (1..4))
    config.vm.define "vm#{i}" do |vm|
      vm.vm.box = "ubuntu/focal64"
      vm.vm.hostname = "vm#{i}"
      
      vm.vm.provider "virtualbox" do |v|
        v.memory = 2048 <- change the number of memory according to your specs
        v.cpus = 1 <- change the numbber of CPU cores according to your specs
      end
```

## Usage
- Clone Repository
  ```
  git clone https://github.com/izzatbey/Vagrant-CNN.git
  ```
  ```
  cd Vagrant-CNN
  ```
- Initiate Vagrantfile
  ```
  vagrant up
  ```
