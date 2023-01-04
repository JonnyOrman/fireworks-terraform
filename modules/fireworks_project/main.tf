module "gcp_project" {
  source = "../gcp_project"

  credentials_file = var.credentials_file

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "topic" {
  source = "../topic"

  topic_name             = var.topic_name
  dead_letter_topic_name = var.dead_letter_topic_name
}

module "subscription" {
  source = "../subscripition"

  topic_name        = var.topic_name
  subscription_name = var.subscription_name
  push_endpoint     = var.app_url
}

module "app" {
  source = "../app"

  project         = var.project_id
  region          = var.region
  collection_name = var.colleciton_name
  app_name        = var.app_name
}

resource "google_cloudbuild_trigger" "build-trigger" {
  location = "global"
  name     = var.build_trigger_name
  filename = var.build_file_name

  github {
    owner = var.github_owner
    name  = var.github_repo_name
    push {
      branch       = "^main$"
      invert_regex = true
    }
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"

  substitutions = var.build_substitutions
}
