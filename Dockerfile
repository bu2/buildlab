FROM debian:jessie

RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y

RUN apt-get install -y linux-source dpkg-dev time

ADD build_kernel.sh ./

CMD ["/bin/sh", "build_kernel.sh"]
