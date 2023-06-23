FROM yarmak/opera-proxy
FROM node
COPY --from=0 ./ ./
RUN ./node --version





