############# GCLOUD PROVIDER ##############
variable "project-id" {
  description = "GCloud Project ID"
  type        = string
}

variable "region" {
  description = "GCloud Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCloud Zone within Region"
  type        = string
  default     = "us-central1-c"
}

############# GKE ##########################
variable "gke_username" {
  default     = ""
  description = "GKE username"
}

variable "gke_password" {
  default     = ""
  description = "GKE password"
}

variable "gke_nodes_num" {
  default     = 1
  description = "Number of gke nodes"
}

variable "gke_nodes_preemptible" {
  default     = false
  description = "Using preemptible nodes"
  type        = bool
}

variable "gke_nodes_machine_type" {
  default     = "n1-standard-1"
  description = "Machine type for GKE nodes"
  type        = string
}

variable "gke_istio_disabled" {
  default     = true
  description = "Enable Istio services in cluster"
  type        = bool
}

variable "gke_location" {
  default     = "us-central1"
  description = "Location og GKE cluster, ether region or zone"
  type        = string
}

variable "gke_desc" {
  description = "GKE cluster description"
  type        = string
}

variable "gke_release_channel" {
  description = "GKE release channel"
  type        = string
  default     = "RAPID"
}
