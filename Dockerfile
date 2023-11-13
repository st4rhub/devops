FROM node:latest

ENV WORKER_IP=default

WORKDIR /app
COPY . ./app

RUN apt install -y curl

RUN npm install

RUN npm install sync-request 


EXPOSE 80

CMD [ "node", "CalculatorService.js" ]
