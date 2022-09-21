# inception
My solution for inception of the common core of 42 school.


![result](https://github.com/tblaase/inception/blob/main/readme_additions/result.png)


The goal of this project was to create a worpress website with presistent storage and nginx inside docker containers inside a virtual machiene.<br>
The used OS for the VM was Ubuntu 22.04.<br>
The catch was that wordpress, nginx and mariadb had to be launched in seperate docker containers which share a network in a way so that the wordpress website is only accessible with https/port 443.<br>
This had to be archieved by using a docker-compose.yml in a way so that when `make` is called in the root of the directory, all needed services are configured and started in a error-free way.<br>
But before doing any of that you had to set up the VM correctly.<br>
To help with that i wrote [this](https://github.com/tblaase/inception/blob/main/inception_prep.sh) script.<br>
It will install all the used services/packages and create the needed directories in your VM.<br>
Down below you will find a step by step on [how to run my project](https://github.com/tblaase/inception#How-to-run-my-project).


## How to run my project

⚠️<br>
When you are at 42school and have limited space on your account, put the VM in goinfre or something similar, otherwise you are going to run out of space, i would reccomend putting the iso also on the same space, since it is almost 4 GB

### Hardware/Software reccomendations
- i used VirtualBox 6.1.32 to create a VM
- the used OS for the VM is Ubuntu 22.04 64-bit
- create vdi hard disk with 20 GB
- give the VM more memory (i run it with 4096 MB), more video memory (i run it with 128 MB) and more CPU-cores (i run it with 4 cores at maximum of 100%), this way there is minimal input lag


### Step by step
- install [this(Ubuntu 22.04 64-bit)](https://ubuntu.com/download/desktop/thank-you?version=22.04&architecture=amd64) .iso on a the VM
- i reccomend putting the window size of your virtual screen to 200%, it is easier this way to work with the VM
- only run minimal installation
- if you want to run my exact version, the username needs to be 'tblaase' otherwise put your own intra in there (if you change the username you should change it inside the [.env file](https://github.com/tblaase/inception/blob/main/srcs/.env) too
- install all software updates
- install `git` with `sudo apt install git` if not already installed
- right now would be the appropriate point in time where you create a snapshot of your VM that can be used as a base
- clone this repo with `git clone https://github.com/tblaase/inception.git`
- run the [setup scrip](https://github.com/tblaase/inception/blob/main/inception_prep.sh) from the root of the repo with `bash inception_prep.sh`
- run `make` in the root of the repository
- now type `https://tblaase.42.fr` (only if you used my configuration) or `https://yourintra.42.fr` (only if you configured it for your own name) in the browser of your VM and enjoy the beauty of a wordpress website with persistent storage
- you might notice the browser complaining about an insecure connection, this is caused by the selfsigned ssl certificate the server uses, you can just ignore it for this project
- all usernames and passwords can be changed from the [.env file](https://github.com/tblaase/inception/blob/main/srcs/.env)
- to login to the wordpress-dashboard to change the apperance or the contents of the webpage go to `https://tblaase.42.fr/wp-admin` and use the WP credentials from the [.env file](https://github.com/tblaase/inception/blob/main/srcs/.env)
- the server can be shutdowm by running `make clean` in the root of the repo
- you can clean the persistent storage by running `make re` in the root of the repo
- if you want the docker-images cleared too you need to uncomment line 8 in the [Makefile](https://github.com/tblaase/inception/blob/main/Makefile)
