output "groups_lookup_id" {
  description = "Map of id values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuredevops_groups.groups_lookup : k => v.id }
}
output "groups_lookup_groups" {
  description = "Map of groups values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuredevops_groups.groups_lookup : k => v.groups }
}
output "groups_lookup_project_id" {
  description = "Map of project_id values across all groups_lookup, keyed the same as var.groups_lookup"
  value       = { for k, v in data.azuredevops_groups.groups_lookup : k => v.project_id }
}

