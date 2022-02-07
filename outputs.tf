output "voltconsole_endpoint" {
  value       = join("", module.volterra_cluster.*.voltconsole_endpoint)
  description = "ADC tier Volterra Volt Console endpoint"
}
