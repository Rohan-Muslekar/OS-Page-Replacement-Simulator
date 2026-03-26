FROM node:18-alpine

WORKDIR /app

COPY os_project_page_replacement/page-replacement-simulator/package*.json ./

RUN npm install --production

COPY os_project_page_replacement/page-replacement-simulator/ .

EXPOSE 3000

CMD ["node", "server.js"]
