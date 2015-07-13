FROM fabito/julius:4.3.1

MAINTAINER Fábio Uechi <fabio.uechi@gmail.com>

RUN wget -P /tmp 'http://www.laps.ufpa.br/falabrasil/files/jlapsapi/for_coruja1.7.+/coruja_jlapsapi-1.7.+.zip' && \
	unzip /tmp/coruja_jlapsapi-1.7.+.zip -d /usr/src && \
	rm -rf /tmp/coruja_jlapsapi-1.7.+.zip

CMD /bin/bash