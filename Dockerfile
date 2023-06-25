FROM yarmak/opera-proxy
FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
COPY --from=0 ./ ./
CMD [ "node", "index.js" ]
docker run -d \
    --security-opt no-new-privileges \
    -p 127.0.0.1:18080:18080 \
    --restart unless-stopped \
    --name opera-proxy \
    yarmak/opera-proxy

