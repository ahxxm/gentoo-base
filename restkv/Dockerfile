FROM ekidd/rust-musl-builder AS builder

ADD build.sh /
RUN /build.sh

FROM alpine:3.12 AS runner
COPY --from=builder /kv/restkv /restkv

EXPOSE 8080
CMD ["/restkv"]
