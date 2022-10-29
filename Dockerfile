FROM node:14
WORKDIR  /app-node
EXPOSE 3000
COPY . .
RUN npm install
ENTRYPOINT npm start

# É a maneira mais práticapodemos adicionar à nossa imagem conteúdos que utilizaremos de maneira mais prática.