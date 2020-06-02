FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install wget gcc build-essential make zlib1g-dev libpcre2-dev libevent-dev libssl-dev unzip \
    && cd ~ && wget https://github.com/ossec/ossec-hids/archive/master.zip --no-check-certificate \
    && unzip master.zip && cd ossec-hids-master/src \
    && wget https://ftp.pcre.org/pub/pcre/pcre2-10.32.tar.gz --no-check-certificate \
    && tar xzf pcre2-10.32.tar.gz -C external

RUN apt-get -y install openssh-server && systemctl ssh start

CMD ["/root/ossec-hids-master/install.sh", "PCRE2_SYSTEM=yes"]