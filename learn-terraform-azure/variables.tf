variable "resource_group_name" {
  type    = string
  default = "myTFResourceGroup"
}

variable "region" {
  type    = string
  default = "westus"
}

variable "network_name" {
  type    = string
  default = "myTFVnet"
}

variable "network_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet0_name" {
  type    = string
  default = "subnet0"
}

variable "subnet0_prefix" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "cost_center" {
  type        = string
  description = "The cost center that will be billed for this configuration"
}

variable "project_name" {
  type        = string
  description = "Name of the current project"
}