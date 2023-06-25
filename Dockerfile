FROM yarmak/opera-proxy
FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
EXPOSE 18000
COPY --from=0 ./ ./
CMD [ "node", "index.js" ]
CMD [ "./opera-proxy", "-country EU" ]

