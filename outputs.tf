output "ns_record_set_lookup_id" {
  description = "Map of id values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.id }
}
output "ns_record_set_lookup_host" {
  description = "Map of host values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.host }
}
output "ns_record_set_lookup_nameservers" {
  description = "Map of nameservers values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.nameservers }
}

