FROM node:10.10.0
COPY . . 
RUN npm install
EXPOSE 8000
CMD npm start