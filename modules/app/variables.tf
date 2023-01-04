variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The resource region"
  type        = string
}

variable "app_name" {
  description = "Name of the fireworks app"
  type        = string
}

variable "collection_name" {
  description = "Name of the Firestore collection"
  type        = string
}
