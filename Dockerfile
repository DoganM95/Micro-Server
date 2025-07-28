FROM alpine:latest
RUN apk add --no-cache socat
EXPOSE 80
CMD ["sh", "-c", "while true; do echo -e 'HTTP/1.1 200 OK\r\n\r\n' | socat -T1 - tcp-listen:80,reuseaddr; done"]