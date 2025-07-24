# Use Nginx to serve the built files
FROM nginx:alpine

# Copy built React app (from dist folder)
COPY dist/ /usr/share/nginx/html

# Custom Nginx config to serve on port 3000
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]

