FROM python:latest
RUN pip3 install aws-tagger
RUN apt-get update && apt-get install -y wget vim tar
WORKDIR /root
RUN wget https://github.com/mpostument/awstaghelper/releases/download/0.17.1/awstaghelper_0.17.1_Linux_x86_64.tar.gz && \
    tar xvzf awstaghelper_0.17.1_Linux_x86_64.tar.gz