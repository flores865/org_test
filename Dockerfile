FROM python:3
FROM node
COPY main.py /
CMD [ "python", "./main.py" ]
CMD [ "node", "--version" ]
