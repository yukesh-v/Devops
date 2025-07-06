variable "region" {
  description = "AWS Region"
  type        = string
default     = ""
}

variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {
   "Name" = "" 
  } 
}
