FROM alpine as builder
RUN apk add unzip curl jq
RUN tag=$(curl -s https://api.github.com/repos/Suwayomi/Tachidesk-Sorayomi/tags | jq -r '.[0].name') && \
		curl -LO https://github.com/Suwayomi/Tachidesk-Sorayomi/releases/download/$tag/tachidesk-sorayomi-$tag-web.zip && \
		unzip tachidesk-sorayomi-$tag-web.zip -d ./static

FROM nginx:stable-alpine-slim
COPY --from=builder ./static /usr/share/nginx/html
