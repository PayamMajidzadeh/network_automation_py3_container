FROM ubuntu:18.04
WORKDIR /install
RUN apt-get update
RUN apt-get install net-tools iproute2 iputils-ping traceroute curl host iperf3 \
    mtr socat ssh ssh-client tcpdump telnet nano vim bash-completion -y
RUN apt-get install python3 -y
RUN apt-get install build-essential libssl-dev libffi-dev -y
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install cryptography
RUN pip3 install netmiko
RUN pip3 install paramiko
RUN pip3 install napalm
RUN pip3 install pyntc
RUN pip3 install ansible
WORKDIR /gns3
