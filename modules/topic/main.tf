resource "google_pubsub_topic" "topic" {
  name = var.topic_name
}

resource "google_pubsub_topic" "dead-letter-topic" {
  name = var.dead_letter_topic_name == null ? "${topic_name}-dead-letter" : var.dead_letter_topic_name
}
