Vagrant.configure("2") do |config|
  # Enable the vagrant-vbguest plugin
  config.vbguest.auto_update = true

  (1..1).each do |i|
    config.vm.define "vm#{i}" do |vm|
      vm.vm.box = "ubuntu/jammy64"
      vm.vm.hostname = "vm#{i}"
      
      vm.vm.provider "virtualbox" do |v|
        v.memory = 4096
        v.cpus = 1
      end

      # Provision the VM to clone the GitHub repository and setup environment
      vm.vm.provision "shell", inline: <<-SHELL
        # Update package lists and install git
        apt-get update
        apt-get install -y git
        apt install python3 python3-venv python3-pip -y

        # Clone the repository
        git clone https://github.com/izzatbey/CNN-Classification.git /home/vagrant/CNN-Classification

        # Navigate to the repository directory
        cd /home/vagrant/CNN-Classification

        # Create a Python virtual environment
        python3 -m venv venv

        # Activate the virtual environment
        source venv/bin/activate

        # Install required packages
        pip3 install -r requirements.txt

        # Run the program
        # python main.py
      SHELL
    end
  end
end
