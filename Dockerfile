FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Minimal tools
RUN apt-get update && apt-get install -y \
	ca-certificates \
	iproute2 \
	curl \
	file \
	vim \
	xz-utils \
	tzdata \
	less

# Timezone Asia/Tokyo
RUN echo "Asia/Tokyo" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata
