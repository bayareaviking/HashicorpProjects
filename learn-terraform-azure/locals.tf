locals { // This block can also be placed in the main.tf file
  common_tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
    Engineer    = "Marcus"
    Version     = "1.0"
    Project     = var.project_name
    Billing     = var.cost_center
  }
}