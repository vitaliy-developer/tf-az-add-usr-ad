resource "azuread_user" "create_usr" {
  for_each = var.azuread_user_info
  display_name        = each.value["display_name"]
  password            = each.value["password"]
  user_principal_name = each.value["user_principal_name"]
}