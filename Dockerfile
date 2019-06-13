# Start with Alpine as the Base Layer
FROM alpine

LABEL author="Nethali Zoysa"
LABEL description="Simple Web App in Node JS"
LABEL version="1.0.0"

# Install node and npm
RUN apk add --update nodejs nodejs-npm

# Copy files to /app directory
COPY . /app

# Make app as the working directory
WORKDIR /app

# Install dependencies
RUN  npm install

# The port container will listen
EXPOSE 8080
ENTRYPOINT ["node", "./app.js"]

