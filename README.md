# Roboshop Frontend

Frontend service for Roboshop.

## Components

- Nginx
- HTML
- CSS
- JavaScript

First testing:
Small code change
Add, commit, and push into feature-01 branch
PR from feature-01 to develop branch
It should automatically trigger webhook
    rs-frontend-ci job
        rs-frontend-cd job
            deploy frontend in EKS cluster
            