variable "ports" {
  description = "Ports to open"
  type        = list(number)
  default     = [80, 443]
}