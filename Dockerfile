# Use the official Nginx image as the base image
FROM nginx:latest

#creating work dir 
WORKDIR /app
#copying content to app for volumes
COPY . .
# Copy the static website files to the Nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80 to allow outside access to the website
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
