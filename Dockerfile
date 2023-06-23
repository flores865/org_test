FROM node
COPY index.js /
CMD [ "node", "npm i ws" ]
CMD [ "node", "index.js" ]

