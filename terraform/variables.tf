variable "name" {
  type        = string
  description = ""
  default     = ""
}

variable "instance_type" {
  type        = string
  description = ""
  default     = ""
}

variable "from_port_ingress" {
  type        = number
  description = ""
}

variable "to_port_ingress" {
  type        = number
  description = ""
}

variable "from_port_egress" {
  type        = number
  description = ""
}

variable "to_port_egress" {
  type        = number
  description = ""
}