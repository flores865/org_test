FROM python:3
FROM node
FROM opera-proxy
COPY main.py /
CMD [ "node", "index.js" ]
