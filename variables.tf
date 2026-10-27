variable "application_passwords" {
  description = <<EOT
Map of application_passwords, attributes below
Required:
    - application_id
Optional:
    - display_name
    - end_date
    - end_date_relative
    - rotate_when_changed
    - start_date
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    application_id      = string
    display_name        = optional(string)
    end_date            = optional(string)
    end_date_relative   = optional(string)
    rotate_when_changed = optional(map(string))
    start_date          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_passwords : (
        can(regex("^(/[^/]+/[^/]+)+$", v.application_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_passwords : (
        v.end_date_relative == null || (length(v.end_date_relative) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

