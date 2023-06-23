FROM python:3
FROM node
FROM yarmak/opera-proxy
COPY main.py /
CMD [ "node", "index.js" ]
