locals {
    ws_ids = values(data.tfe_workspace_ids.ws-ids.ids)
    varset_ids = values({ for k, v in data.tfe_variable_set.varset : k => v.id })
    ws_varset = flatten([
        for workspaces in local.ws_ids : [
            for varsets in local.varset_ids : {
                workspaces = workspaces
                varsets = varsets
            }
        ]
    ])
}

resource "tfe_workspace_variable_set" "attach-varset" {
    for_each = {
      for ws_varset in local.ws_varset : "${ws_varset.workspaces}.${ws_varset.varsets}" => ws_varset
    }
    workspace_id = each.value.workspaces
    variable_set_id = each.value.varsets
}