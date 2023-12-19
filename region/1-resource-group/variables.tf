variable "region" {
  type        = string
}

variable "resource-group-name" {
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to all resources"
  type        = map(any)
  default     = {}
}