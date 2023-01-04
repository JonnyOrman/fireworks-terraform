variable "credentials_file" {
  description = "The file with the project credentials"
  type        = string
  default     = "credentials.json"
}

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

variable "collection_name" {
  description = "Name of the Firestore collection"
  type        = string
}

variable "topic_name" {
  description = "Name of the Pub/Sub topic to subscribe to"
  type        = string
}

variable "dead_letter_topic_name" {
  description = "Name of the Pub/Sub dead letter topic for the subscription"
  type        = string
}

variable "app_name" {
  description = "Name of the fireworks app"
  type        = string
}

variable "app_url" {
  description = "The app URL"
  type        = string
}

variable "build_trigger_name" {
  description = "Name of the Cloud Build trigger"
  type        = string
}

variable "build_file_name" {
  description = "Name of the Cloud Build file"
  type        = string
}

variable "github_owner" {
  description = "The name of the GitHub account that owns the repo"
  type        = string
}

variable "github_repo_name" {
  description = "The name of the GitHub repo"
  type        = string
}

variable "build_substitutions" {
  description = "Substitutions to be made in the build file"
  type        = map(string)
}
