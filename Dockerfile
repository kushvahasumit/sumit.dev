# Use an Nginx base image
FROM nginx:latest

# Copy your HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Copy the images folder into the container
COPY images /usr/share/nginx/html/images


# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
