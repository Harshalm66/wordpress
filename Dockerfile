FROM centos:7

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y ansible

COPY . /app
WORKDIR /app

COPY post.sh /app/post.sh
RUN chmod +x /app/post.sh

CMD ["ansible-playbook", "deploy-wordpress.yml", "&&", "/app/post.sh"]

