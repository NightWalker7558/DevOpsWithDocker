#  Build Stage

FROM node:16.0.0-alpine as builder

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install && npm run build && npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]

# Final Stage

FROM busybox:1.36

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build/  /usr/src/app/

CMD ["busybox", "httpd", "-f", "-v", "-p", "5000"]