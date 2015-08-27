FROM ubuntu:14.04

RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:saltstack/salt && apt-get update
RUN apt-get install -y salt-master salt-minion salt-syndic

CMD ["bash"]