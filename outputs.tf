output "application_passwords_id" {
  description = "Map of id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_passwords_application_id" {
  description = "Map of application_id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_passwords_display_name" {
  description = "Map of display_name values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "application_passwords_end_date" {
  description = "Map of end_date values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.end_date if v.end_date != null && length(v.end_date) > 0 }
}
output "application_passwords_end_date_relative" {
  description = "Map of end_date_relative values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.end_date_relative if v.end_date_relative != null && length(v.end_date_relative) > 0 }
}
output "application_passwords_key_id" {
  description = "Map of key_id values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "application_passwords_rotate_when_changed" {
  description = "Map of rotate_when_changed values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.rotate_when_changed if v.rotate_when_changed != null && length(v.rotate_when_changed) > 0 }
}
output "application_passwords_start_date" {
  description = "Map of start_date values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.start_date if v.start_date != null && length(v.start_date) > 0 }
}
output "application_passwords_value" {
  description = "Map of value values across all application_passwords, keyed the same as var.application_passwords"
  value       = { for k, v in azuread_application_password.application_passwords : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}

