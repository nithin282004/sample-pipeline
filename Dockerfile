FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

# EXPOSE 50
CMD ["nginx" ,"-g","daemon off;"]
