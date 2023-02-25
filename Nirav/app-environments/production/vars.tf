

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  default     = "dataloop-candidate-environment"
}

variable "network_name" {
  description = "The name of the network being created"
  type        = string
  default     = "dataloop-nirav-vpc"
}

variable "routing_mode" {
  type    = string
  default = "REGIONAL"
}

variable "auto_create_subnetworks" {
  type    = bool
  default = true
}

variable "machine_type" {
  default = "e2-standard-4"
}

variable "location" {
  default = "us-east1"
}

variable "node_disk_size" {
  default = "30"
}

variable "cluster_name" {
  type    = string
  default = "dataloop-nirav-gke-cluster"
}

variable "subnetwork" {
  default = "10.142.0.0/20"
}

variable "zone" {
  default = "us-east1-b"
}
