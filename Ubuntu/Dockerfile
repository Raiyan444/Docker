FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get -y install openssh-server

RUN useradd creative && \
    echo "creative:creative123" | chpasswd && \
    usermod -s /bin/bash creative && \
    mkdir -p /home/creative/.ssh/ && \
    chmod 700 /home/creative/.ssh && \
    mkdir -p /var/run/sshd

COPY creative.pub /tmp/creative.pub

RUN cat /tmp/creative.pub > /home/creative/.ssh/authorized_keys

RUN chown creative:creative -R /home/creative/.ssh && \
    chmod 600 /home/creative/.ssh/authorized_keys

#RUN apt-get -y install ansible

RUN mkdir -p /home/creative/.ansible/tmp/ && \
    chown creative:creative -R /home/creative/.ansible/    

RUN apt-get -y install sudo && \
    apt-get -y install openjdk-8-jre

RUN echo "creative ALL=NOPASSWD: ALL" >> /etc/sudoers

CMD ["/usr/sbin/sshd", "-D"]
