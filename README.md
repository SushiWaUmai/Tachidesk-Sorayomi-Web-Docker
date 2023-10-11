# Tachidesk Sorayomi Web Docker

[Tachidesk Sorayomi](https://github.com/Suwayomi/Tachidesk-Sorayomi) Web Docker
Image

Sample `docker-compose.yml` file

```yaml
version: "3"
services:
  tachidesk-sorayomi:
    container_name: tachidesk-sorayomi
    image: sushiwaumai/tachidesk-sorayomi-web
    ports:
      - 3000:80
    restart: unless-stopped
```

Running

```
docker compose up
```

should open a server on port 3000.
