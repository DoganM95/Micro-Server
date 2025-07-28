# Intro

A **minimalistic HTTP server** container that responds to any request — any method, any path — with just a 200 status. 

## Features

- Ultra-small Alpine-based Docker image (~10 MB)
- Instant start-up
- Handles all HTTP methods (`GET`, `POST`, etc.)
- One-line output: `HTTP/1.1 200 OK`
- Stateless, connection closes after response

## Use Cases

Running this container with auto-start on boot (e.g., via Docker's restart policy) can provide:

- **Reachability check** for the host system or container stack
- **Load balancer health probe** target (e.g., for reverse proxies)
- **Firewall / port forwarding test** endpoint
- **Basic SLA / uptime monitoring** (just watch for 200)
- **Debugging tool** to test client-side HTTP behavior
- **Smoke test target** for continuous deployment pipelines

## Run

### Linux

```shell
docker run -d \
  --name doganm95-micro-server \
  -p 1111:80 \
  --pull always \
  --restart always \
  ghcr.io/doganm95/micro-server:latest
```

### Windows

```powershell
docker run -d `
  --name doganm95-micro-server `
  -p 1111:80 `
  --pull always `
  --restart always `
  ghcr.io/doganm95/micro-server:latest
```
