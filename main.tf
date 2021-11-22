resource "tfe_workspace" "vpc" {
  name         = "VPC-Workspace"
  organization = var.tfe_organization_name
  vcs_repo {
    identifier     = "${var.github_user}/AWS-and-Terraform"
    oauth_token_id = var.oauth_token_id
    branch         = var.github_branch
  }
  global_remote_state = true
  execution_mode      = "remote"
  working_directory   = "/Homework4/VPC"
}

resource "tfe_variable" "availability_zones " {
  key          = "availability_zones "
  value        = var.aws_access_key
  description  = "Availability zones to account for"
  workspace_id = tfe_workspace.vpc.id
  category     = "terraform"
}

resource "tfe_variable" "cidr_size" {
  key          = "cidr_size"
  value        = var.aws_access_key
  description  = "CIDR Size"
  workspace_id = tfe_workspace.vpc.id
  category     = "terraform"
}

resource "tfe_variable" "vpc_name" {
  key          = "vpc_name"
  value        = var.vpc_name
  description  = "VPC Name"
  workspace_id = tfe_workspace.vpc.id
  category     = "terraform"
}



