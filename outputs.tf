output "key_prefix_lookup_id" {
  description = "Map of id values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_prefix_lookup_datacenter" {
  description = "Map of datacenter values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "key_prefix_lookup_namespace" {
  description = "Map of namespace values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "key_prefix_lookup_partition" {
  description = "Map of partition values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no partition are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "key_prefix_lookup_path_prefix" {
  description = "Map of path_prefix values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no path_prefix are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.path_prefix if v.path_prefix != null && length(v.path_prefix) > 0 }
}
output "key_prefix_lookup_subkey" {
  description = "Map of subkey values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no subkey are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.subkey if v.subkey != null && length(v.subkey) > 0 }
}
output "key_prefix_lookup_subkeys" {
  description = "Map of subkeys values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no subkeys are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.subkeys if v.subkeys != null && length(v.subkeys) > 0 }
}
output "key_prefix_lookup_token" {
  description = "Map of token values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no token are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "key_prefix_lookup_var" {
  description = "Map of var values across all key_prefix_lookup, keyed the same as var.key_prefix_lookup except keys with no var are omitted"
  value       = { for k, v in data.consul_key_prefix.key_prefix_lookup : k => v.var if v.var != null && length(v.var) > 0 }
}

