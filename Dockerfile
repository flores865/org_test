FROM yarmak/opera-proxy
FROM node
COPY --from=0 ./ ./
CMD [ "node", "index.js" ]





