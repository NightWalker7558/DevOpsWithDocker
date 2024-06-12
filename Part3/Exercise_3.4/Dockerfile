FROM docker:23-git

WORKDIR /usr/src/app

# copy sources
COPY build.sh .

# run installer
ENTRYPOINT ["./build.sh"]