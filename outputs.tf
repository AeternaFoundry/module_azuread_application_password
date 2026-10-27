output "application_passwords_id" {
  description = "Map of id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.id }
}
output "application_passwords_application_id" {
  description = "Map of application_id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.application_id }
}
output "application_passwords_display_name" {
  description = "Map of display_name values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.display_name }
}
output "application_passwords_end_date" {
  description = "Map of end_date values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.end_date }
}
output "application_passwords_end_date_relative" {
  description = "Map of end_date_relative values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.end_date_relative }
}
output "application_passwords_key_id" {
  description = "Map of key_id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.key_id }
}
output "application_passwords_rotate_when_changed" {
  description = "Map of rotate_when_changed values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.rotate_when_changed }
}
output "application_passwords_start_date" {
  description = "Map of start_date values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.start_date }
}
output "application_passwords_value" {
  description = "Map of value values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.value }
  sensitive   = true
}

