variable "region" {
  description = "AWS Region"
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {} # Provide an empty map as default if not always needed
}
