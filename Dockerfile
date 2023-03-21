FROM node:17-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY next.config.js ./next.config.js 

# COPY . .

# EXPOSE 3000
# required for docker desktop port mapping

CMD ["yarn", "dev"]