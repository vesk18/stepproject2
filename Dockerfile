FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Expose the port the app runs on (only needed for running the app)
EXPOSE 3000

# Default command to run the app
ENTRYPOINT ["npm"]
CMD ["start"]
