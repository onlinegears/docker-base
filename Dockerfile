FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Minimal tools
RUN apt update && apt install -y \
	iproute2 \
	curl \
	vim \
	xz-utils \
	tzdata \
	less

# Timezone Asia/Tokyo
RUN echo "Asia/Tokyo" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata
