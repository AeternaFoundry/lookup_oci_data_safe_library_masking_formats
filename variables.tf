variable "data_safe_library_masking_formats_lookup" {
  description = <<EOT
Map of data_safe_library_masking_formats_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - display_name
    - library_masking_format_id
    - library_masking_format_source
    - state
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    access_level                          = optional(string)
    compartment_id_in_subtree             = optional(bool)
    display_name                          = optional(string)
    library_masking_format_id             = optional(string)
    library_masking_format_source         = optional(string)
    state                                 = optional(string)
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

