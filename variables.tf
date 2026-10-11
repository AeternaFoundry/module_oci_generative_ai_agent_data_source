variable "generative_ai_agent_data_sources" {
  description = <<EOT
Map of generative_ai_agent_data_sources, attributes below
Required:
    - compartment_id
    - knowledge_base_id
    - data_source_config (block):
        - data_source_config_type (required)
        - object_storage_prefixes (required, block):
            - bucket (required)
            - namespace (required)
            - prefix (optional)
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - metadata
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id    = string
    knowledge_base_id = string
    defined_tags      = optional(map(string))
    description       = optional(string)
    display_name      = optional(string)
    freeform_tags     = optional(map(string))
    metadata          = optional(map(string))
    data_source_config = object({
      data_source_config_type = string
      object_storage_prefixes = list(object({
        bucket    = string
        namespace = string
        prefix    = optional(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_agent_data_sources : (
        length(v.data_source_config.object_storage_prefixes) >= 1
      )
    ])
    error_message = "Each object_storage_prefixes list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_agent_data_sources : (
        contains([for v in ["OCI_OBJECT_STORAGE"] : lower(v)], lower(v.data_source_config.data_source_config_type))
      )
    ])
    error_message = "must be one of: \"OCI_OBJECT_STORAGE\""
  }
}

