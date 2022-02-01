# BUILD STAGE
FROM golang:alpine AS builder

LABEL maintainer="harshithau@vmware.com"

WORKDIR  /main

COPY  . .






# RUN STAGE

FROM alpine:latest

WORKDIR  /root

COPY --from=builder /main .

EXPOSE 8080

CMD [ "./main" ]






