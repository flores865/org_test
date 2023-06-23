FROM yarmak/opera-proxy
docker exec -i -t exampleApp3000 ls -alF /app
CMD [ "ls -la" ]




