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

RUN mkdir /root/.ssh/ \
    && echo "KexAlgorithms diffie-hellman-group1-sha1,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group14-sha1" > /root/.ssh/config \
    && echo "Ciphers 3des-cbc,blowfish-cbc,aes128-cbc,aes128-ctr,aes256-ctr" >> /root/.ssh/config

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]

WORKDIR /root
