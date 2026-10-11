output "generative_ai_agent_data_sources_id" {
  description = "Map of id values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no id are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generative_ai_agent_data_sources_compartment_id" {
  description = "Map of compartment_id values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no compartment_id are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "generative_ai_agent_data_sources_data_source_config" {
  description = "Map of data_source_config values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no data_source_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => one(v.data_source_config) if v.data_source_config != null && length(v.data_source_config) > 0 }
}
output "generative_ai_agent_data_sources_defined_tags" {
  description = "Map of defined_tags values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no defined_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "generative_ai_agent_data_sources_description" {
  description = "Map of description values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no description are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.description if v.description != null && length(v.description) > 0 }
}
output "generative_ai_agent_data_sources_display_name" {
  description = "Map of display_name values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no display_name are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "generative_ai_agent_data_sources_freeform_tags" {
  description = "Map of freeform_tags values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "generative_ai_agent_data_sources_knowledge_base_id" {
  description = "Map of knowledge_base_id values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no knowledge_base_id are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.knowledge_base_id if v.knowledge_base_id != null && length(v.knowledge_base_id) > 0 }
}
output "generative_ai_agent_data_sources_lifecycle_details" {
  description = "Map of lifecycle_details values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "generative_ai_agent_data_sources_metadata" {
  description = "Map of metadata values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no metadata are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "generative_ai_agent_data_sources_state" {
  description = "Map of state values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no state are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "generative_ai_agent_data_sources_system_tags" {
  description = "Map of system_tags values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no system_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "generative_ai_agent_data_sources_time_created" {
  description = "Map of time_created values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no time_created are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "generative_ai_agent_data_sources_time_updated" {
  description = "Map of time_updated values across all generative_ai_agent_data_sources, keyed the same as var.generative_ai_agent_data_sources except keys with no time_updated are omitted"
  value       = { for k, v in oci_generative_ai_agent_data_source.generative_ai_agent_data_sources : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

