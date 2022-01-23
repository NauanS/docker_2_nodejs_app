FROM node:14-alpine AS dev-stage
WORKDIR /usr/app
ENV PATH /usr/app/node_modules/.bin:$PATH
COPY ./frontend/package.json /usr/app
RUN npm install && npm install
COPY ./frontend ./
CMD ["npm", "start"]