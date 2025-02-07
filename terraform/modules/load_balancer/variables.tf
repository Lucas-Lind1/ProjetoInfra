variable "name" {
  description = "The name of the load balancer"
  type        = string
}

variable "internal" {
  description = "Whether the load balancer is internal or internet-facing"
  type        = bool
  default     = false
}

variable "subnets" {
  description = "The subnets to attach to the load balancer"
  type        = list(string)
}

variable "security_groups" {
  description = "The security groups to associate with the load balancer"
  type        = list(string)
}

variable "enable_deletion_protection" {
  description = "Enable deletion protection for the load balancer"
  type        = bool
  default     = false
}

variable "idle_timeout" {
  description = "The idle timeout for the load balancer in seconds"
  type        = number
  default     = 60
}