variable "orgName" {
    type = string
    description = "Name of Terraform Cloud Organisation"
}

variable "tags" {
    type = list
    description = "Lists of tags to be filtered through for workspaces in TFC"
}

variable "varset" {
    type = list
    description = "Name of Variable Set to attach"
}