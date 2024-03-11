FROM alpine:latest
RUN apk add --no-cache bash git
COPY --chmod=0755 entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
