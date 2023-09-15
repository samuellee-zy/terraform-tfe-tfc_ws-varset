output "workspace-vals" {
    description = "Outputs the mapping of Variable Set IDs to the Workspace Ids"
    value = {for ws_varset in local.ws_varset : "${ws_varset.workspaces}.${ws_varset.varsets}" => ws_varset}
}

output "workspace-ids" {
    description = "Outputs all the Workspaces Ids that has the specified tags"
    value = values(data.tfe_workspace_ids.ws-ids.ids)
}

output "varset-ids" {
    description = "Outputs all the Variable Set Ids that has the specified variable set names"
    value = values({ for k, v in data.tfe_variable_set.varset : k => v.id })
}