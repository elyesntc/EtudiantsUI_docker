# Stage 1
FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
#RUN npm run build --prod
EXPOSE 4200
CMD ["npm", "start", "--host=0.0.0.0"]
# Stage 2
#FROM nginx:alpine
#COPY --from=node /app/dist/EtudiantsUI /usr/share/nginx/html
