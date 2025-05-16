FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      wget python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY task2.sh task3.sh search.sh config.txt ./
RUN chmod +x task2.sh task3.sh search.sh
CMD ["./task2.sh"]

