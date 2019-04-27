FROM sysrun/rtlsdr-base

WORKDIR /tmp

RUN git clone https://github.com/antirez/dump1090.git

WORKDIR /tmp/dump1090

RUN apt-get install -y pkg-config && \
    apt-get clean

RUN make

ENTRYPOINT ["./dump1090"]
