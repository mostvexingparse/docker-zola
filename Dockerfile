FROM debian:buster-slim

RUN apt-get update && apt-get install -y wget

RUN wget -q -O - \
  "https://github.com/getzola/zola/releases/download/v0.10.0/zola-v0.10.0-x86_64-unknown-linux-gnu.tar.gz" \
  | tar xzf - -C /usr/local/bin

EXPOSE 1111
CMD ["/usr/local/bin/zola"]
