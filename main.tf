resource "oci_generative_ai_agent_data_source" "generative_ai_agent_data_sources" {
  for_each = var.generative_ai_agent_data_sources

  compartment_id    = each.value.compartment_id
  knowledge_base_id = each.value.knowledge_base_id
  defined_tags      = each.value.defined_tags
  description       = each.value.description
  display_name      = each.value.display_name
  freeform_tags     = each.value.freeform_tags
  metadata          = each.value.metadata

  data_source_config {
    data_source_config_type = each.value.data_source_config.data_source_config_type
    dynamic "object_storage_prefixes" {
      for_each = each.value.data_source_config.object_storage_prefixes
      content {
        bucket    = object_storage_prefixes.value.bucket
        namespace = object_storage_prefixes.value.namespace
        prefix    = object_storage_prefixes.value.prefix
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

