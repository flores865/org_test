FROM python:3
FROM nodejs
COPY main.py /
CMD [ "python", "./main.py" ]
CMD [ "node", "--version" ]
