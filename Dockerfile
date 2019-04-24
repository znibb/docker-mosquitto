FROM alpine:3.8

MAINTAINER znibb@zkylark.se

RUN	apk add --no-cache \
	mosquitto && \
	mkdir -p /mosquitto && \
	chown mosquitto:mosquitto /mosquitto

VOLUME ["/mosquitto"]

EXPOSE 1883

# Copy default config
COPY ./files/mosquitto.default /etc/mosquitto/mosquitto.conf

CMD ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
