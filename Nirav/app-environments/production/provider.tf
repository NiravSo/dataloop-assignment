provider "aws" {
  profile = var.AWS_PROFILE
  region  = var.AWS_REGION
}

provider "google" {
  credentials = file("./terraform-service-account.json")
  project     = var.project_id
  region      = var.location
}

provider "google-beta" {
  credentials = file("./terraform-service-account.json")
  project     = var.project_id
  region      = var.location
}