FROM centos:7

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y ansible

COPY . /app
WORKDIR /app

CMD ["ansible-playbook", "deploy-wordpress.yml"]
