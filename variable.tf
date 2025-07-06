variable "region" {
  description = "AWS Region"
  type        = string
default     = "us-east-1"
}

variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {
   "Name" = "DVS-TEST1" 
  } # Provide an empty map as default if not always needed
}
