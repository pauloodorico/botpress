FROM node:18

# Instale dependências do Node.js
RUN npm install -g corepack && corepack enable
WORKDIR /botpress

# Copie os arquivos do repositório para o contêiner
COPY . .

# Instale pacotes e compile o Botpress
RUN pnpm install && pnpm build

# Exponha a porta usada pelo Botpress
EXPOSE 3000

# Inicie o Botpress
CMD ["pnpm", "start"]
