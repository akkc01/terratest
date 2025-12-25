# output "vnet_names" {
#   value = { for k, v in azurerm_virtual_network.this : k => v.name }
# }

output "vnet_test" {
  value = "VNET_Module testing Completed"
}