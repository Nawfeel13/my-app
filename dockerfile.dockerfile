# Utilisation d'une image légère Nginx pour servir notre application web
FROM nginx:alpine

# Copier le contenu de notre application web dans le répertoire de travail de Nginx
COPY index.html /usr/share/nginx/html

# Nginx expose le port 80 par défaut
EXPOSE 80

# Commande pour démarrer Nginx et servir l'application
CMD ["nginx", "-g", "daemon off;"]
