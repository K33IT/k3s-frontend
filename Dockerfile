#- FROM #(permet de choisir un conteneur)
#- WORKDIR ( créer le dossier de travail et vous place dedans)
#- COPY (permet de copier des fichiers dun dossier local à un dossier du conteneur)
#- RUN (permet d executer des commandes dans le conteneur)
#- CMD (permet de definir la commande qui sera executé au lancement)

FROM node:18
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run","start"]