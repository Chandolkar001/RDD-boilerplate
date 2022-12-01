FROM node:16-alpine 
WORKDIR /app/frontend
COPY . ./
RUN npm ci 
RUN npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD [ "npx", "serve", "build" ]