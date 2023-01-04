resource "google_cloud_run_service" "app" {
  name     = var.app_name
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"

        env {
          name  = "PROJECT_ID"
          value = var.project_id
        }

        env {
          name  = "PROJECT"
          value = var.project_id
        }

        env {
          name  = "COLLECTION_NAME"
          value = var.collection_name
        }

        resources {
          limits = {
            memory = "128Mi"
          }
        }
      }

      timeout_seconds = 5
    }

    metadata {
      annotations = {
        "autoscaling.knative.dev/maxScale" = 1
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  metadata {
    annotations = {
      "run.googleapis.com/ingress" = "all"
    }
  }
}
