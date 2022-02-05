module "rg" {
  source = "./modules/rg"
  for_each = var.resource_groups
    
  resource_group_name = each.key
  location = lookup(each.value,"location","eastus2")
  tags = lookup(each.value,"tags",{})
}
