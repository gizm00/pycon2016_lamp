FROM linode/lamp
RUN apt-get update && apt-get install -y \ 
	wget \
	unzip
RUN wget https://github.com/gizm00/pycon2016_lamp/archive/master.zip
RUN unzip master.zip
RUN cp pycon2016_lamp-master/webfiles/* /var/www/example.com/public_html/
RUN /etc/init.d/apache2 start
RUN ifconfig | grep 'inet addr'
