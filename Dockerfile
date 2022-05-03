FROM znc:slim

# znc:slim removed them. Install them again.
RUN set -x \
    && apk add --no-cache \
        build-base \
        cmake \
        icu-dev \
        openssl-dev \
        perl \
        python3

RUN wget -O /tmp/push.cpp https://raw.githubusercontent.com/jreese/znc-push/master/push.cpp
RUN /opt/znc/bin/znc-buildmod /tmp/push.cpp || exit 12

USER znc
CMD ["/opt/znc/bin/znc", "--foreground", "--datadir", "/znc-data"]
