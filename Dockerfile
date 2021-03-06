FROM node:7.10
# FROM mhart/alpine-node:6

RUN apt-get update && apt-get install -y \
  npm

WORKDIR /src
ADD . .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python

# If you need npm, don't use a base tag
# RUN npm install

EXPOSE 3000
CMD ["npm", "start"]