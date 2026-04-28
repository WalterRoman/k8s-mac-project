# ── DOCKERFILE ──

# FROM: start with the official Nginx web server image
# nginx:alpine = Nginx built on Alpine Linux (tiny, only ~5MB)
# This is our base — like choosing a pre-built house foundation
FROM nginx:alpine

# LABEL: adds metadata to the image (like a name tag)
LABEL maintainer="Walter"
LABEL description="K8s website running on Nginx"
LABEL version="1.0"

# RUN: executes a command while building the image
# Removes the default Nginx welcome page so ours shows instead
RUN rm -rf /usr/share/nginx/html/*

# COPY: copies files FROM your Mac INTO the container
# website/ = source folder on your Mac
# /usr/share/nginx/html/ = where Nginx looks for files to serve
COPY website/ /usr/share/nginx/html/

# EXPOSE: documents that this container listens on port 80
# Port 80 = standard HTTP port
EXPOSE 80

# CMD: the command that runs when the container starts
# Starts Nginx in the foreground (required for Docker)
CMD ["nginx", "-g", "daemon off;"]
