output "resource_groups_ids" {
  value = [for rg in module.rg : rg.resource_group_id]
}
