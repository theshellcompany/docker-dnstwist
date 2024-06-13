FROM debian:bookworm
LABEL maintainers = "erik@theshell.company"

ENV DEBIAN_FRONTEND=noninteractive

# upgrade
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
  python3 \
  python3-pip\
  python3-dnspython \
  python3-tld \
  python3-geoip \
  python3-idna \
  python3-ssdeep \
  python3-tlsh \
  python3-pil \
  python3-selenium \
  pipx \
  ca-certificates \
  chromium-driver \
  git

WORKDIR /opt/
RUN git clone https://github.com/elceef/dnstwist.git
ENTRYPOINT ["python3", "/opt/dnstwist/dnstwist.py"]
