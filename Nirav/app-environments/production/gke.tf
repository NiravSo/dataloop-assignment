module "eks" {
  source = "../../modules/gke"

  project_id     = var.project_id
  machine_type   = var.machine_type
  location       = var.zone
  node_disk_size = var.node_disk_size
  cluster_name   = var.cluster_name
  network        = module.vpc.self_link
  subnetwork     = var.subnetwork
  zone           = var.zone


  depends_on = [module.vpc]

}