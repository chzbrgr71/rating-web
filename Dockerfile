FROM node:9.4.0-alpine

ARG IMAGE_TAG_REF

ENV IMAGE_TAG $IMAGE_TAG_REF

WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "container" ]