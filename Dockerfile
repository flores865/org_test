FROM yarmak/opera-proxy
FROM node
COPY --from=0 ./ ./
RUN ./opera-proxy





