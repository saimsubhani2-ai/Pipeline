# Use the lightweight Nginx Latest image
FROM nginx:latest

# Set the working directory to Nginx's default html folder
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy your local index.html to the container
# This assumes your file is named 'index.html'
COPY index.html .

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
