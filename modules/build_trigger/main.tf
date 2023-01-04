resource "google_cloudbuild_trigger" "build-trigger" {
  location = "global"
  name     = var.build_trigger_name
  filename = var.build_file_name

  github {
    owner = var.github_owner
    name  = var.github_repo_name
    push {
      branch       = "^${var.push_branch}$"
      invert_regex = var.invert_push_branch
    }
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"

  substitutions = var.build_substitutions
}
