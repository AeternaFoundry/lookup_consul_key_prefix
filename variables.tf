variable "key_prefix_lookup" {
  description = <<EOT
Map of key_prefix_lookup, attributes below
Required:
    - path_prefix
Optional:
    - datacenter
    - namespace
    - partition
    - token
    - subkey (block):
        - default (optional)
        - name (required)
        - path (required)
EOT

  type = map(object({
    path_prefix = string
    datacenter  = optional(string)
    namespace   = optional(string)
    partition   = optional(string)
    token       = optional(string)
    subkey = optional(list(object({
      default = optional(string)
      name    = string
      path    = string
    })))
  }))
}

