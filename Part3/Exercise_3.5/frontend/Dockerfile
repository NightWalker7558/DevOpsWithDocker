FROM node:16.0.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN adduser -S nodeUser

USER nodeUser

CMD ["serve", "-s", "-l", "5000", "build"]