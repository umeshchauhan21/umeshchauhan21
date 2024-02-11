resource "azurerm_resource_group" "Rgt" {
  for_each = var.rgname
  name     = each.value.name
  location = each.value.location
}