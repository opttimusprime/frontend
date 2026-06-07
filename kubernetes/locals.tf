locals {
  common_tags = {
    Project     = "roboshop"
    Component   = "frontend"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}