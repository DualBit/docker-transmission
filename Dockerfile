FROM linuxserver/transmission:latest

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	make \
	bash \
	build-base \
	ruby \
	ruby-dev \
	ruby-rdoc && \
 echo "**** install houston gem ****" && \
 gem install houston && \
 echo "**** cleanup ****" && \
 rm -rf \
	/tmp/*

# ports and volumes
EXPOSE 9091 51413
VOLUME /config /downloads /watch
