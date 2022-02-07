module "volterra_cluster" {
  source                        = "./modules/volterra"
  volterra_cluster_size         = var.volterra_cluster_size
  ibm_resource_group            = var.ibm_resource_group
  ibm_region                    = var.ibm_region
  ibm_zone                      = var.ibm_zone
  ibm_profile                   = var.volterra_ce_profile
  ibm_ssh_key_name              = var.ibm_ssh_key_name
  ibm_outside_subnet_id         = var.ibm_outside_subnet_id
  ibm_outside_security_group_id = var.ibm_outside_security_group_id
  ibm_inside_subnet_id          = var.ibm_inside_subnet_id
  ibm_inside_security_group_id  = var.ibm_inside_security_group_id
  ibm_inside_gateway            = var.ibm_inside_gateway
  ibm_inside_networks           = var.ibm_internal_networks
  volterra_ce_version           = var.volterra_ce_version
  volterra_tenant_name          = var.volterra_tenant_name
  volterra_site_name            = "${var.volterra_site_name}-${var.ibm_region}-${var.ibm_zone}"
  volterra_fleet_label          = "${var.volterra_site_name}-${var.ibm_region}-${var.ibm_zone}-fleet"
  volterra_api_token            = var.volterra_api_token
  volterra_admin_password       = var.volterra_admin_password
  volterra_ipsec_tunnels        = var.volterra_ipsec_tunnels
  volterra_ssl_tunnels          = var.volterra_ssl_tunnels
}