FROM node:16.0.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install && npm run build && npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]