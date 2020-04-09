from node:alpine

maintainer "guolin.pan@nokia-sbell.com"

run npm i docsify-cli -g
run mkdir -p /usr/local/docsify

expose 3000
workdir /usr/local/docsify

entrypoint [ "docsify", "serve", "--port", "3000" ]

cmd [ "." ]
