# Terraform Module - Attach Variable Sets to TFC Workspaces based on Tags

This repo contains a terraform module intended to attach variable sets to Terraform Cloud based on tags.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Prerequisites

It's assumed that you have already created the following:

- [TFC Organisation](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/organizations)
- [Variable Sets](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables#variable-sets)
- [Workspaces](https://developer.hashicorp.com/terraform/cloud-docs/workspaces)

You will need to configure the following variables as part of this module:

| Name    | Description                                       | Type   |
| ------- | ------------------------------------------------- | ------ |
| orgName | TFC Organisation Name                             | string |
| tags    | List of all tags to be filtered for               | list   |
| varset  | List of all variable sets to attach to workspaces | list   |

## Usage

```hcl
module "tfc_ws-varset" {
    source = "terraform-tfc-modules/..."

    orgName = "<Insert TFC Organisation Name>"
    tags = ["tag1", "tag2", "tag3"]
    varset = ["varsetName1", "varsetName2", "varsetName3"]
}
```
