data "consul_key_prefix" "key_prefix_lookup" {
  for_each = var.key_prefix_lookup

  path_prefix = each.value.path_prefix
  datacenter  = each.value.datacenter
  namespace   = each.value.namespace
  partition   = each.value.partition
  token       = each.value.token

  dynamic "subkey" {
    for_each = each.value.subkey != null ? each.value.subkey : []
    content {
      default = subkey.value.default
      name    = subkey.value.name
      path    = subkey.value.path
    }
  }
}

