FROM node:16.15.1 as base
# WORKDIR /app

# Add package file
COPY package.json .
RUN npm install
# COPY . ./

# Copy source
COPY src ./src


# Expose port 3000
EXPOSE 5000

CMD ["node", "src/app.js"]