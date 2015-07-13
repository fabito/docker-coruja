FROM ubuntu:14.04

MAINTAINER Fábio Uechi <fabio.uechi@gmail.com>

RUN apt-get update && apt-get install -y wget unzip build-essential zlib1g-dev flex libasound2-dev libesd0-dev libsndfile1-dev

RUN wget -P /tmp 'http://iij.dl.sourceforge.jp/julius/60273/julius-4.3.1.tar.gz' && \
	tar zxvf /tmp/julius-4.3.1.tar.gz -C /usr/local && \
	rm -rf /tmp/julius-4.3.1.tar.gz && \
	cd /usr/local/julius-4.3.1 && \
	./configure --enable-words-int && make && make install

RUN wget -P /tmp 'http://www.laps.ufpa.br/falabrasil/files/jlapsapi/for_coruja1.7.+/coruja_jlapsapi-1.7.+.zip' && \
	unzip /tmp/coruja_jlapsapi-1.7.+.zip -d /usr/src && \
	rm -rf /tmp/coruja_jlapsapi-1.7.+.zip

CMD /bin/bash