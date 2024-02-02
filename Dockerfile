# Usar uma imagem oficial do Node JS como base
FROM node:16

# Definir o diretório de trabalho do conteiner
WORKDIR /usr 

# Copiar os arquivos package* 
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar os arquivos para o diretório de trabalho
COPY . .

# Expor a porta 5678
EXPOSE 5678

# Comando que inicia a aplicação
CMD ["node","./src/server.js"]
