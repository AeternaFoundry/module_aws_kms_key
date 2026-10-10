output "kms_keys_id" {
  description = "Map of id values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_keys_arn" {
  description = "Map of arn values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "kms_keys_bypass_policy_lockout_safety_check" {
  description = "Map of bypass_policy_lockout_safety_check values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.bypass_policy_lockout_safety_check if v.bypass_policy_lockout_safety_check != null }
}
output "kms_keys_custom_key_store_id" {
  description = "Map of custom_key_store_id values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.custom_key_store_id if v.custom_key_store_id != null && length(v.custom_key_store_id) > 0 }
}
output "kms_keys_customer_master_key_spec" {
  description = "Map of customer_master_key_spec values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.customer_master_key_spec if v.customer_master_key_spec != null && length(v.customer_master_key_spec) > 0 }
}
output "kms_keys_deletion_window_in_days" {
  description = "Map of deletion_window_in_days values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.deletion_window_in_days if v.deletion_window_in_days != null }
}
output "kms_keys_description" {
  description = "Map of description values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kms_keys_enable_key_rotation" {
  description = "Map of enable_key_rotation values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.enable_key_rotation if v.enable_key_rotation != null }
}
output "kms_keys_is_enabled" {
  description = "Map of is_enabled values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.is_enabled if v.is_enabled != null }
}
output "kms_keys_key_id" {
  description = "Map of key_id values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_keys_key_usage" {
  description = "Map of key_usage values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.key_usage if v.key_usage != null && length(v.key_usage) > 0 }
}
output "kms_keys_multi_region" {
  description = "Map of multi_region values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.multi_region if v.multi_region != null }
}
output "kms_keys_policy" {
  description = "Map of policy values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "kms_keys_region" {
  description = "Map of region values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.region if v.region != null && length(v.region) > 0 }
}
output "kms_keys_rotation_period_in_days" {
  description = "Map of rotation_period_in_days values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.rotation_period_in_days if v.rotation_period_in_days != null }
}
output "kms_keys_tags" {
  description = "Map of tags values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kms_keys_tags_all" {
  description = "Map of tags_all values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "kms_keys_xks_key_id" {
  description = "Map of xks_key_id values across all kms_keys, keyed the same as var.kms_keys"
  value       = { for k, v in aws_kms_key.kms_keys : k => v.xks_key_id if v.xks_key_id != null && length(v.xks_key_id) > 0 }
}

