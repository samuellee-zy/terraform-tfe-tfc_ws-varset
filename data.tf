data "tfe_workspace_ids" "ws-ids" {
    tag_names = var.tags
    organization = var.orgName
}

data "tfe_variable_set" "varset" {
    for_each = toset(var.varset)
    name = each.key
    organization = var.orgName
}