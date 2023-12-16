FROM nginx:latest

# Copy SSL certificates
COPY fullchain.pem /etc/ssl/certs/fullchain.pem
COPY privkey.pem /etc/ssl/private/privkey.pem

# Copy the Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

COPY index.html script.js styles.css /usr/share/nginx/html

# Expose HTTP and HTTPS ports
EXPOSE 80 443


CMD ["nginx", "-g", "daemon off;"]
