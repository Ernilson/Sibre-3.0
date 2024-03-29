FROM openjdk:11

ARG PROFILE
ARG ADDITIONAL_OPTS

ENV PROFILE=${PROFILE}
ENV ADDITIONAL_OPTS={ADDITIONAL_OPTS}

WORKDIR /opt/devsibre


SHELL ["/bin/sh","-c"]

EXPOSE 55005
EXPOSE 8080

CMD java ${ADDITIONAL_OPTS} -jar devsibre.jar --spring.profiles.active={PROFILE}