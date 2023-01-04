variable "topic_name" {
  description = "Name of the Pub/Sub topic to subscribe to"
  type        = string
}

variable "dead_letter_topic_name" {
  description = "Name of the Pub/Sub dead letter topic for the subscription"
  type        = string
  default     = null
}
