FROM node:latest

ENV MY_IP=default

WORKDIR /app

RUN apt install -y curl

RUN npm install

RUN npm install sync-request 

COPY ./CalculatorService.js .

EXPOSE 80

CMD [ "node", "CalculatorService.js" ]
