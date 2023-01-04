variable "topic_name" {
  description = "Name of the Pub/Sub topic to subscribe to"
  type        = string
}

variable "subscription_name" {
  description = "Name of the Pub/Sub subscription"
  type        = string
}

variable "app_url" {
  description = "The app URL to push to"
  type        = string
}
