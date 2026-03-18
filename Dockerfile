FROM node:24-alpine

WORKDIR /app

RUN apk update
RUN apk add curl git
RUN apk add openjdk25

# KUBEK INSTALL
RUN git clone https://github.com/Seeroy/kubek-minecraft-dashboard.git /app && \
    npm install

# INSTALL JAVA
RUN ln -s /usr/bin/java /app/java

CMD ["npm", "start"]
