variable "vpc_cidr" {
  type = string
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  description = "Name of the VPC"
  default = "instance_vpc"
}

variable "cidr_public_subnet" {
  type = string
  description = "CIDR block for the public subnet"
  default = "10.0.1.0/24"
}

variable "public_subnet_name" {
  type = string
  description = "Name of the public subnet"
  default = "instaces_subnet"
}

variable "igw_name" {
  type = string
  description = "Name of the internet gateway"
  default = "instance_igw"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Map public IP on launch"
  default = false
}

variable "enable_dns_support" {
  type = bool
  description = "Enable DNS support"
  default = true
}

variable "enable_dns_hostnames" {
  type = bool
  description = "Enable DNS hostnames"
  default = true
}

variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "extra tags to add to the instance"
}