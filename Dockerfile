FROM node:16.15.1-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
WORKDIR /app
COPY . .
RUN npm install && npm install pm2 -g
RUN echo node -v
RUN echo pm2 -v
EXPOSE 80
CMD ["pm2-runtime", "process.yml"]
