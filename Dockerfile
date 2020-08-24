FROM phusion/baseimage

RUN mkdir /app /app/bin /app/data

ADD ./build/dock-builD/server/bin/RelayHttpServer /app/bin/

CMD ["sh", "-c", "/app/bin/RelayHttpServer -Url ${URL} -Port ${LOCAL_PORT} -Workdir /app/data -EthereumNodeUrl ${NODE_URL} -RelayHubAddress ${RELAY_HUB} -GasPricePercent ${GAS_PRICE_PERCENT}"]



