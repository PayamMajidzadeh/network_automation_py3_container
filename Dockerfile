FROM ubuntu:18.04
WORKDIR /install
RUN apt-get update
RUN apt-get install net-tools iproute2 iputils-ping traceroute curl host iperf3 mtr socat ssh ssh-client tcpdump telnet nano vim bash-completion -y
RUN apt-get install sshpass -y
RUN apt-get install python3 -y
RUN apt-get install build-essential libssl-dev libffi-dev -y
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install -U cryptography
RUN pip3 install -U netmiko
RUN pip3 install -U paramiko
RUN pip3 install -U napalm
RUN pip3 install -U pyntc
RUN pip3 install -U ansible
RUN pip3 install -U simplejson

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]

WORKDIR /root
