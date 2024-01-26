ARG NODE_VERSION=20.11.0

FROM node:${NODE_VERSION}-alpine as base
WORKDIR /usr/src/app
EXPOSE 3000

FROM base as dev
ENV NODE_ENV development
COPY package.json .
COPY package-lock.json .
RUN npm ci --include=dev
RUN npm install typescript -g
COPY . .
RUN npm run build
# RUN npm run sync-db
USER node
CMD npm run sync-db && npm run dev

FROM base as prod
ENV NODE_ENV production
COPY package.json .
COPY package-lock.json .
RUN npm ci --omit=dev
RUN npm install typescript -g
COPY . .
RUN npm run build
# RUN npm run sync-db
USER node
CMD npm run sync-db && npm start
