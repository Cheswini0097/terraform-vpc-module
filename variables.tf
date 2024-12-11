variable "project_name" {
    type = string
  
}
variable "envinorment" {
    type = string
  
}
variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    default = true
  
}
variable "common_tags" {
    default = {}
}
variable "vpc_tags" {
    default = {}
}
variable "igw_tags" {
    default = {}
}
variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please select the valid public subnet cidrs"
    }
  
}
variable "public_subnet_tags" {
    default = {}
  
}
variable "private_subnet_tags" {
    default = {}
  
}
variable "private_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "please select valid two private subnet_cidrs"
    }
  
}
variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please enter the valid two database cubnet cidrs"
    }
}
variable "database_subnets_tags" {
    default = {}
  
}
variable "db_subnet_group" {
    default = {}
  
}
variable "nat_gateway_tags" {
    default = {}
  
}
variable "eip_tags" {
    default = {}
  
}
variable "public_route_table_tags" {
    default = {}
  
}
variable "private_route_table_tags" {
    default = {}
  
}
variable "database_route_table_tags" {
    default = {}
  
}
# variable "is_peering_required" {
#     type =  bool
#     default = false
  
# }
# variable "aws_vpc_peering_tags" {
#     default = {}
  
# }
