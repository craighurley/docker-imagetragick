FROM        centos:7
MAINTAINER  Thomas Fricke

# Install packages
RUN         yum install epel-release -y

RUN         yum install python3-pip  -y
ADD         ImageMagick-devel-6.7.8.9-10.el7.x86_64.rpm ImageMagick-6.7.8.9-10.el7.x86_64.rpm /tmp/
RUN         yum localinstall /tmp/ImageMagick*.rpm -y 

COPY        ./app /app
WORKDIR     /app

# Install pip modules
RUN         pip3 install -r requirements.txt
RUN         rm -r uploads && ln -s /tmp uploads  
EXPOSE      8080

CMD         python app.py
