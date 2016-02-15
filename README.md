# Build Lab

Some experiments around [Docker](https://www.docker.com/), [Vagrant](https://www.vagrantup.com/) and compilation/build performance.



To build debian/jessie64 kernel within a container inside a VM (shoud work on Linux/Mac OS X/Windows):
```
$ vagrant up
$ vagrant ssh
$ sudo docker run -it build
```
To clean up everything and destroy the VM:
```
$ ./clean.sh
```


To build debian/jessie64 kernel within a Docker container directly on the host system (works on Linux with a working Docket installation only):
```
$ sudo docker build -t build .
$ sudo docker run -it build
```
