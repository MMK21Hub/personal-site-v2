# Mish's personal website (v2)

A personal website built with Astro.

There's nothing here yet, but hopefully there will be soon.

## Development documentation

## Prerequisites

1. Clone repo
2. `yarn install`

## Running locally

1. Start the dev server: `yarn dev`

## Building

1. Optionally, you can preview the side by running `yarn preview`
1. Run `yarn build` to output the site to the `dist/` folder

## Building a Docker image

### Building Docker image to run locally

1. Build and save the image locally: `docker buildx build . --load --tag mish-site`
2. Run the image: `docker run -p 8080:80 mish-site`
