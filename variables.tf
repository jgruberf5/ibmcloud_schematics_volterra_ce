##################################################################################
# ibm_resource_group - The IBM Cloud resource group to create the VPC
##################################################################################
variable "ibm_resource_group" {
  type        = string
  default     = "default"
  description = "The IBM Cloud resource group to create the VPC"
}

##################################################################################
# ibm_region - The IBM Cloud VPC Gen 2 region to create VPC environment
##################################################################################
variable "ibm_region" {
  default     = "us-south"
  description = "The IBM Cloud VPC Gen 2 region to create VPC environment"
}

##################################################################################
# ibm_zone - The zone within the IBM Cloud region to create the VPC environment
##################################################################################
variable "ibm_zone" {
  default     = "1"
  description = "The zone within the IBM Cloud region to create the VPC environment"
}

##################################################################################
# ibm_ssh_key_name - The name of the existing SSH key to inject into infrastructure
##################################################################################
variable "ibm_ssh_key_name" {
  default     = ""
  description = "The name of the existing SSH key to inject into infrastructure"
}

##################################################################################
# ibm_outside_subnet_id - The subnet id for the SLO CE interface
##################################################################################
variable "ibm_outside_subnet_id" {
  default     = ""
  description = "The subnet id for the SLO CE interface"
}

##################################################################################
# ibm_outside_security_group_id - The security group id for the SLO CE interface
##################################################################################
variable "ibm_outside_security_group_id" {
  default     = ""
  description = "The security group id for the SLO CE interface"
}

##################################################################################
# ibm_inside_subnet_id - The subnet id for the SLI CE interface
##################################################################################
variable "ibm_inside_subnet_id" {
  default     = ""
  description = "The subnet id for the SLI CE interface"
}

##################################################################################
# ibm_inside_security_group_id - The security group id for the SLI CE interface
##################################################################################
variable "ibm_inside_security_group_id" {
  default     = ""
  description = "The security group id for the SLI CE interface"
}

##################################################################################
# ibm_inside_gateway - The IP address to use for the SLI internal gateway
##################################################################################
variable "ibm_inside_gateway" {
  default     = ""
  description = "The IP address to use for the SLI internal gateway"
}

##################################################################################
# ibm_internal_networks - Internal reachable network IPv4 CIDRs
##################################################################################
variable "ibm_internal_networks" {
  type        = list(string)
  default     = []
  description = "Internal reachable network IPv4 CIDRs"
}

##################################################################################
# volterra_site_name - The CE site to register
##################################################################################
variable "volterra_site_name" {
  type        = string
  default     = "customer-site-1"
  description = "The CE site to register"
}

##################################################################################
# volterra_ce_version - The IBM VPC profile for CE
##################################################################################
variable "volterra_ce_profile" {
  type        = string
  default     = "cx2-4x8"
  description = "The IBM VPC profile for CE"
}

##################################################################################
# volterra_ce_version - The version of Volterra CE image to Import
##################################################################################
variable "volterra_ce_version" {
  type        = string
  default     = "7.2009.5"
  description = "The version of Volterra CE image to Import"
}

##################################################################################
# volterra_tenant_name - The Volterra tenant (group) name
##################################################################################
variable "volterra_tenant_name" {
  type        = string
  default     = ""
  description = "The Volterra tenant (group) name"
}

##################################################################################
# volterra_api_token - The API token to use to register with Volterra
##################################################################################
variable "volterra_api_token" {
  type        = string
  default     = ""
  description = "The API token to use to register with Volterra"
}

##################################################################################
# volterra_cluster_size - The Volterra cluster size
##################################################################################
variable "volterra_cluster_size" {
  type        = number
  default     = 3
  description = "The Volterra cluster size"
}

##################################################################################
# volterra_admin_password - The password for the built-in admin Volterra user
##################################################################################
variable "volterra_admin_password" {
  type        = string
  default     = ""
  description = "The password for the built-in admin Volterra user"
}

##################################################################################
# volterra_ssl_tunnels - Use SSL tunnels to connect to Volterra
##################################################################################
variable "volterra_ssl_tunnels" {
  type        = bool
  default     = false
  description = "Use SSL tunnels to connect to Volterra"
}

##################################################################################
# volterra_ipsec_tunnels - Use IPSEC tunnels to connect to Volterra
##################################################################################
variable "volterra_ipsec_tunnels" {
  type        = bool
  default     = true
  description = "Use IPSEC tunnels to connect to Volterra"
}
