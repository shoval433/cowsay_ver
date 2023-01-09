# FROM node:latest
FROM node:alpine
#only for alpine

# RUN  apt-get update -y
WORKDIR /src_app
COPY /src .
ENV PORT=8080
RUN npm install
# RUN pushd src_app;npm install;popd
ENTRYPOINT ./entry-point.sh ${PORT}
