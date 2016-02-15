Build Lab

Some experimentations around Docker, Virtualization and compilation/build performance.



To build debian/jessie64 kernel within a Docker container inside a VM (shoud work on Linux/Mac OS X/Windows):
$ vagrant up
$ vagrant ssh
$ sudo docker run -it build

To clean up everything the VM:
$ ./clean.sh



To build debian/jessie64 kernel within a Docker container directly on the host system (works on Linux only):
$ sudo docker build -t build .
$ sudo docker run -it build
