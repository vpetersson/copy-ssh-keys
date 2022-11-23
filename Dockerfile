FROM ubuntu

RUN apt-get update && \
    apt-get install -y python3 python3-pip sshpass ssh && \
    apt-get clean
RUN pip3 install ansible

ENV ANSIBLE_HOST_KEY_CHECKING=False

COPY playbook.yml /root/
