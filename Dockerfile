# ---- Simple static-site image for the portfolio ----
FROM nginx:alpine

# Remove nginx's default sample page
RUN rm -rf /usr/share/nginx/html/*

# Copy the site into nginx's web root
COPY index.html /usr/share/nginx/html/index.html
COPY favicon.ico /usr/share/nginx/html/favicon.ico

# nginx listens on 80 by default
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
