# inception
My solution for the inception project of the common core of 42 school.

get the Ubuntu 22.04 64-bit .iso from [here](https://ubuntu.com/download/desktop/thank-you?version=22.04&architecture=amd64)

- when you are at 42school and have limited space on your account, put the VM in goinfre or something similar, otherwise you are going to run out of space, i would reccomend putting the iso also on the same space, since it is almost 4 GB

- i used VirtualBox 6.1.32 to create a VM
- the used OS for the VM is Ubuntu 22.04 64-bit
- create vdi hard disk with 20 GB
- give the VM more memory (i run it with 4096 MB), more video memory (i run it with 128 MB) and more CPU-cores (i run it with 4 cores at maximum of 100%), this way there is minimal input lag
- install [this](https://ubuntu.com/download/desktop/thank-you?version=22.04&architecture=amd64) iso on a the VM
- i reccomend putting the window size of your virtual screen to 200%, it is easier this way to work with the VM
- only run minimal installation
- if you want to run my exact version, the username needs to be 'tblaase' otherwise put your own intra in there
- install all software updates
- install 'git' with 'sudo apt install git'
- right now would be the appropriate point in time where you create a snapshot of your VM that can be used as a base
- clone this repo with 'git clone https://github.com/tblaase/inception.git'
- run the setup scrip from the root of the repo with 'bash inception_prep.sh'
- run 'make'
- now type 'https://tblaase.42.fr'(only if you used my configuration) or 'https://yourintra.42.fr' (only if you configured it for your own name) in your browser and enjoy the beauty of a wordpress website with persistant storage