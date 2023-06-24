FROM yarmak/opera-proxy
FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
COPY --from=0 ./ ./
CMD [ "node", "index.htm" ]


