# FROM mhart/alpine-node:base
# FROM mhart/alpine-node:base-0.10
# FROM mhart/alpine-node
FROM mhart/alpine-node:6.9.2

# If you have native dependencies, you'll need extra tools
RUN apk add --no-cache make gcc g++ python

# As of Alpine Linux 3.3 there exists a new --no-cache option for apk. 
# It allows users to install packages with an index that is updated and 
# used on-the-fly and not cached locally
RUN apk add --no-cache curl jq

# If you need npm, don't use a base tag
# RUN npm install
