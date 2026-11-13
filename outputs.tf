output "key_prefix_lookup_id" {
  description = "Map of id values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.id }
}
output "key_prefix_lookup_datacenter" {
  description = "Map of datacenter values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.datacenter }
}
output "key_prefix_lookup_namespace" {
  description = "Map of namespace values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.namespace }
}
output "key_prefix_lookup_partition" {
  description = "Map of partition values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.partition }
}
output "key_prefix_lookup_path_prefix" {
  description = "Map of path_prefix values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.path_prefix }
}
output "key_prefix_lookup_subkey" {
  description = "Map of subkey values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.subkey }
}
output "key_prefix_lookup_subkeys" {
  description = "Map of subkeys values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.subkeys }
}
output "key_prefix_lookup_token" {
  description = "Map of token values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.token }
  sensitive   = true
}
output "key_prefix_lookup_var" {
  description = "Map of var values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.var }
}

