# Use the Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the static assets from your host to the container
COPY ./public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
