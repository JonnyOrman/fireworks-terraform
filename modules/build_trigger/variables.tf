variable "build_trigger_name" {
  description = "Name of the Cloud Build trigger"
  type        = string
}

variable "build_file_name" {
  description = "Name of the Cloud Build file"
  type        = string
  default     = "cloudbuild.yaml"
}

variable "github_owner" {
  description = "The name of the GitHub account that owns the repo"
  type        = string
}

variable "github_repo_name" {
  description = "The name of the GitHub repo"
  type        = string
}

variable "push_branch" {
  description = "Substitutions to be made in the build file"
  type        = string
  default     = "main"
}

variable "build_substitutions" {
  description = "Substitutions to be made in the build file"
  type        = map(string)
}
