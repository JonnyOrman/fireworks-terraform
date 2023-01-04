resource "google_pubsub_subscription" "subscription" {
  name  = var.subscription_name
  topic = var.topic_name

  ack_deadline_seconds = 20

  push_config {
    push_endpoint = var.app_url

    attributes = {
      x-goog-version = "v1"
    }
  }
}
