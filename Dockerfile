FROM centos
RUN yum install glibc.i686 -y
RUN yum install unzip -y
RUN yum install wget -y
RUN useradd -m steam
RUN su - steam
RUN wget https://www.dropbox.com/s/gfmwrmsripn9r2h/Rushserver.zip?dl=0
RUN mv Rushserver.zip?dl=0 Rushserver.zip
RUN unzip Rushserver.zip
RUN cd Steam/RushDeployment
RUN ls
RUN chmod u+x Steam/RushDeployment/start.sh
CMD sh  Steam/RushDeployment/start.sh

EXPOSE 28015
EXPOSE 28016
