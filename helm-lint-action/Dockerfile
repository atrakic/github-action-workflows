FROM alpine:latest
RUN apk add --no-cache bash helm
COPY --chmod=0755 entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
