variable "prefix" {
  description = "prefix for resources created"
  default     = "hashi-f5-demo"
}
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "f5_username" {
  description = "F5 username"
  default     = "admin"
}

variable "f5_ami_search_name" {
  description = "BIG-IP AMI name to search for"
  type        = string
  default     = "F5 BIGIP-16.1.0* PAYG-Good 25Mbps*"
}
variable "allow_from" {
  description = "IP Address/Network to allow traffic from (i.e. 192.0.2.11/32)"
  type        = string
}

variable "nginx_servers" {
   description = "number of server to start, 1 minimal and 4 maximum"
   type = number

   validation {
     condition  = (
      var.nginx_servers >= 1 &&
      var.nginx_servers <= 4
      )
     error_message = "The number of nginx servers must be an integer between 1 and 4"
  }
}
