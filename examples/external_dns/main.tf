module "tfe" {
  source = "../../"

  location             = var.location
  friendly_name_prefix = var.friendly_name_prefix
  tfe_license_filepath = "${path.module}/files/ptfe-license.rli"

  resource_group_name     = var.resource_group_name
  resource_group_name_dns = var.resource_group_name_dns

  domain_name   = var.domain_name
  tfe_subdomain = var.tfe_subdomain

  key_vault_name   = var.key_vault_name
  certificate_name = var.certificate_name

  tags = var.tags

  vm_node_count = 2

  # External DNS information
  dns_create_record = false
  dns_external_fqdn = var.dns_external_fqdn
}
