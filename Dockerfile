FROM ubuntu:18.04
RUN apt update && apt install -y --no-install-recommends \
	cloud-image-utils \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/

ENTRYPOINT ["cloud-localds"]
CMD ["-h"]
