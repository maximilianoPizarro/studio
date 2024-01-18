FROM node:12.18.4
LABEL maintainer="maximiliano.pizarro.5@gmail.com"
ADD . /code
WORKDIR /code
RUN yarn install
RUN yarn build
ENV DEV_STUDIO_PATH=/code/packages/studio-be/out
ENV BP_DATA_FOLDER=/code/data
ENV BP_MODULES_PATH=/code/node_modules
ENV BP_SERVER_URL=http://localhost
WORKDIR /code/packages/studio-be
EXPOSE 3000
CMD yarn start