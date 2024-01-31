# Usa un'immagine di node.js come base
FROM node:14

# Imposta la directory di lavoro nel container
WORKDIR /usr/src/app

# Copia il package.json e il package-lock.json nel container
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia tutti i file nella directory corrente nel container
COPY . .

# Espone la porta 3000
EXPOSE 3000

# Comando per avviare l'applicazione
CMD ["npm", "start"]
