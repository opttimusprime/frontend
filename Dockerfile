# ========================================
# STAGE 1: Clone frontend from GitHub
# ========================================
FROM alpine:3.20 AS builder

RUN apk add --no-cache git

WORKDIR /roboshop/frontend

RUN git clone --depth 1 --branch develop https://github.com/opttimusprime/frontend.git .

# ========================================
# STAGE 2: NGINX runtime
# ========================================
FROM nginx:1.27-alpine

# Remove default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy RoboShop frontend static files
COPY --from=builder /roboshop/frontend/app/ /usr/share/nginx/html/

# Copy custom NGINX configuration
COPY --from=builder /roboshop/frontend/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]






#####################################
#Original Dockerfile for frontend
#####################################
#FROM nginx:1.27-alpine
#COPY app/ /usr/share/nginx/html/
#COPY nginx.conf /etc/nginx/conf.d/default.conf
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]



