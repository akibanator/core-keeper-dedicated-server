FROM cm2network/steamcmd:root

RUN apt-get update && apt-get upgrade -y \
		&& mkdir /corekeeper \
		&& mkdir /corekeeper/game \
		&& mkdir /corekeeper/game_data \
		&& chown -R ${USER}:${USER} /corekeeper \
		&& apt-get install xvfb -y

WORKDIR /corekeeper

COPY script_install .
COPY server.sh .

RUN chmod +x ./server.sh

USER ${USER}

RUN /home/steam/steamcmd/steamcmd.sh +runscript /corekeeper/script_install

USER root

CMD ["./server.sh"]