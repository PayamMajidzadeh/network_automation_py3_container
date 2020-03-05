FROM gns3/ubuntu
WORKDIR /install
RUN apt-get update
RUN apt-get install net-tools -y
RUN apt-get install nano -y
RUN apt-get install vim -y
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
WORKDIR ~
