################################################################################
#
# .) Build
# docker build -t casadocker/dev-linux-base .
# docker build --no-cache -t casadocker/dev-linux-base .
# .) Run
# docker run --name dev-linux -it casadocker/dev-linux-base bash
#
################################################################################

FROM casadocker/ansible

RUN apt-get -y update
RUN apt-get install -y curl git apt-transport-https sudo

ADD requirements.yml /opt/requirements.yml
RUN ansible-galaxy install -r /opt/requirements.yml

ADD ansible /opt/ansible
WORKDIR /opt/ansible

RUN ansible-playbook playbook.yml -c local --skip-tags "no-docker"
