# Vagrant virual machine with python3.11

Your need install vagrant and virtualbox for up this configuration.

Your need install [vagrant](https://github.com/hashicorp/vagrant-installers/releases/tag/v2.3.4.dev%2Bmain "vagrant") and  [virtualbox](https://www.virtualbox.org/ "virtualbox") for up this configuration. Optional you can use [make](https://www.gnu.org/software/make/ "make").

### Step 1

Download box bento/ubuntu-22.04 for virtualbox from [vagrantup](https://app.vagrantup.com/fasmat/boxes/ubuntu2204-desktop "vagrantup").

### Step 2

Clonr this repository: 

``git clone https://github.com/codesshaman/vagrant_ubuntu_desktop.git``

### Step 3

Copy/move box and named it "ubuntu". In the terminal go inside the project folder:

``cp ~/Downloads/bfdde63e-5629-4f9f-bad8-f3b154fc61a8 path_to/vagrant_ubuntu_desktop/ubuntu``

or

``mv bfdde63e-5629-4f9f-bad8-f3b154fc61a8 vagrant_ubuntu_desktop/ubuntu``

``cd vagrant_ubuntu_desktop/project``

### Step 4

Inicialize configuration:

``vagrant box add fasmat/ubuntu2204-desktop ubuntu``

or with make:

``make build``

### Step 5

Install configuration:

``vagrant up --provider=virtualbox``

or with make:

``make``

### Step 6

Login with login and password "vagrant".

### Step 7

Connect to VM from terminal:

``ssh vagrant@192.168.58.93``

or with make:

``make connect``

## Howto use this configuration?

1. Open external folder "<myproject>" or "<myproject>/src" in Pycharm
2. Use VM for project creation and external project folder for use git

Change PATH: ``export VAGRANT_HOME=".vagrantboxes"`` or ``make path``

Start: ``vagrant up`` or ``make``

Stop: ``vagrant halt`` or ``make down``

Restart: ``vagrant reload`` or ``make re``

Hybernation: ``vagrant suspend``

Delete VM: ``vagrant destroy`` or ``make clean``
