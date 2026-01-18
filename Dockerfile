FROM node:lts-alpine AS build
WORKDIR /app
COPY . .
RUN corepack enable
RUN yarn install
RUN yarn run build

FROM httpd:2.4 AS runtime
COPY --from=build /app/dist /usr/local/apache2/htdocs/
EXPOSE 80