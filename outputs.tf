output "workspace-vals" {
    value = {for ws_varset in local.ws_varset : "${ws_varset.workspaces}.${ws_varset.varsets}" => ws_varset}
}

output "workspace-ids" {
    value = values(data.tfe_workspace_ids.all-aws.ids)
}

output "varset-ids" {
    value = values({ for k, v in data.tfe_variable_set.varset : k => v.id })
}