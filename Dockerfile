FROM jenkins/inbound-agent:alpine as jnlp

FROM alpine:3

RUN apk update && \
apk add --no-cache ansible && \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

COPY --from=jnlp /usr/local/bin/jenkins-agent /usr/local/bin/jenkins-agent
COPY --from=jnlp /usr/share/jenkins/agent.jar /usr/share/jenkins/agent.jar

ENTRYPOINT ["/usr/local/bin/jenkins-agent"]