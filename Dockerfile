FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g pytest
COPY . .
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
CMD ["start"]
