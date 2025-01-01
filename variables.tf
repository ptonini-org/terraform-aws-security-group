variable "name" {
  default = null
}

variable "vpc_id" {}

variable "ingress_rules" {
  type = map(object({
    from_port                    = optional(number)
    to_port                      = optional(number)
    ip_protocol                  = optional(string, "tcp")
    cidr_ipv4                    = optional(string)
    cidr_ipv6                    = optional(string)
    prefix_list_id               = optional(string)
    referenced_security_group_id = optional(string)
  }))
  default = {}
  nullable = false
}

variable "egress_rules" {
  type = map(object({
    from_port                    = optional(number)
    to_port                      = optional(number)
    ip_protocol                  = optional(string, "tcp")
    cidr_ipv4                    = optional(string)
    cidr_ipv6                    = optional(string)
    prefix_list_id               = optional(string)
    referenced_security_group_id = optional(string)
  }))
  default = {}
  nullable = false
}

variable "tags" {
  type    = map(string)
  default = {}
  nullable = false
}