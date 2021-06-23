locals {
  gke_nodes_machine_type = lookup(var.gke_cluster_node_map, lower(var.gke_cluster_size))
}

module "gke" {
  source = "git::https://github.com/markusobsil/terraform-modules//gke?ref=v0.1.1"

  project-id             = var.project-id
  region                 = var.region
  zone                   = var.zone
  gke_location           = var.gke_location
  gke_nodes_preemptible  = var.gke_nodes_preemptible
  gke_nodes_num          = var.gke_nodes_num
  gke_istio_disabled     = var.gke_istio_disabled
  gke_nodes_machine_type = local.gke_nodes_machine_type
  gke_desc               = var.gke_desc
  gke_release_channel    = var.gke_release_channel
}
