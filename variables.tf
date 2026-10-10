variable "kms_keys" {
  description = <<EOT
Map of kms_keys, attributes below
Optional:
    - bypass_policy_lockout_safety_check
    - custom_key_store_id
    - customer_master_key_spec
    - deletion_window_in_days
    - description
    - enable_key_rotation
    - is_enabled
    - key_usage
    - multi_region
    - policy
    - region
    - rotation_period_in_days
    - tags
    - tags_all
    - xks_key_id
EOT

  type = map(object({
    bypass_policy_lockout_safety_check = optional(bool)
    custom_key_store_id                = optional(string)
    customer_master_key_spec           = optional(string)
    deletion_window_in_days            = optional(number)
    description                        = optional(string)
    enable_key_rotation                = optional(bool)
    is_enabled                         = optional(bool)
    key_usage                          = optional(string)
    multi_region                       = optional(bool)
    policy                             = optional(string)
    region                             = optional(string)
    rotation_period_in_days            = optional(number)
    tags                               = optional(map(string))
    tags_all                           = optional(map(string))
    xks_key_id                         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kms_keys : (
        v.custom_key_store_id == null || (length(v.custom_key_store_id) >= 1 && length(v.custom_key_store_id) <= 22)
      )
    ])
    error_message = "must be between 1 and 22 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.kms_keys : (
        v.deletion_window_in_days == null || (v.deletion_window_in_days >= 7 && v.deletion_window_in_days <= 30)
      )
    ])
    error_message = "must be between 7 and 30"
  }
  validation {
    condition = alltrue([
      for k, v in var.kms_keys : (
        v.rotation_period_in_days == null || (v.rotation_period_in_days >= 90 && v.rotation_period_in_days <= 2560)
      )
    ])
    error_message = "must be between 90 and 2560"
  }
  validation {
    condition = alltrue([
      for k, v in var.kms_keys : (
        v.xks_key_id == null || (length(v.xks_key_id) >= 1 && length(v.xks_key_id) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

