variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The resource region"
  type        = string
}

variable "zone" {
  description = "The resource zone"
  type        = string
}

variable "credentials_file" {
  description = "The file with the project credentials"
  type        = string
  default     = "credentials.json"
}
