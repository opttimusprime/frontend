# ========================================
# RoboShop Frontend - NGINX
# ========================================

FROM nginx:1.27-alpine

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy frontend application files
COPY app/ /usr/share/nginx/html/

# Copy NGINX configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]