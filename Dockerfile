# Use the Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Assuming your index.html is in the root of your project directory
COPY index.html /usr/share/nginx/html/

# If your CSS files are in a 'css' folder
COPY css/ /usr/share/nginx/html/css/

# If your JS files are in a 'js' folder
COPY js/ /usr/share/nginx/html/js/

# If you have images in an 'images' folder
COPY images/ /usr/share/nginx/html/images/

# Continue with the rest of your asset folders and files as needed

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
