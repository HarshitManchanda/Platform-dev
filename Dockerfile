FROM node:14.17.4-slim
RUN mkdir /app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
EXPOSE 8000
CMD ["npm", "run", "develop"]