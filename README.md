# Mish's personal website (v2)

My personal website built with Astro.

There's nothing here yet, but hopefully there will be soon.

## Live deployment

[**👉 Go to me.slevel.xyz to check it out!**](https://me.slevel.xyz)

## Deployment documentation

This site is deployed using Docker! A GitHub Action automatically builds
a new image ([ghcr.io/mmk21hub/mish-site](https://github.com/MMK21Hub/mish-site/pkgs/container/mish-site))
for each commit on the `master` branch, which can then be deployed on
any server using Docker.

### Example `docker-compose.yaml`

```yaml
services:
  mish-site:
    image: ghcr.io/mmk21hub/mish-site:latest
    ports:
      - "8123:80" # Customise (or remove) the port as needed
    restart: unless-stopped
```

Then just run the normal `docker-compose up -d` incarnation to bring it online.

### Deploying for production

It is expected that this website will be deployed behind a reverse proxy
(I like to use Caddy) to provide TLS, HTTP/3 support, etc.

## Development documentation

### Prerequisites

1. Clone repo
2. `yarn install`

### Running locally

1. Start the dev server: `yarn dev`

### Building

1. Optionally, you can preview the side by running `yarn preview`
1. Run `yarn build` to output the site to the `dist/` folder

### Building Docker image to run locally

1. Build and save the image locally: `docker buildx build . --load --tag mish-site`
2. Run the image: `docker run -p 8080:80 mish-site`

## AI usage statement

- I use GitHub Copilot's autocomplete and next-edit suggestions in a
  limited capacity to speed my coding up.
- Amp has been used to generate the GitHub Actions workflow (see file
  comment for details)
