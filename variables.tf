variable "tfe_organization_name" {
  description = "Terrafrom Cloud Organization Name"
  type        = string
}

variable "github_user" {
  description = "Github Username"
  type        = string
}

variable "oauth_token_id" {
  description = "Github OAuth Token ID"
}
variable "github_branch" {
  description = "Github Branch Name"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones to account for"
  type        = number
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "aws_acess_key" {
  description = "AWS Acess Key"
  type        = string
}

variable "aws_secret_acess_key" {
  description = "AWS Secret Acess Key"
  type        = string
}
variable "default_region" {
  description = "AWS Default Region"
  type        = string
}
