# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# output "tfe_license_secret_id" {
# value       = var.tfe_license == null ? null : azurerm_key_vault_secret.tfe_license[0].id
#  description = "The Key Vault secret ID of the Base64 encoded TFE license."
#  sensitive   = true
#}

output "private_key_pem" {
  value = var.private_key_pem == null ? {
    name   = null
    secret = null
    } : {
    name   = azurerm_key_vault_secret.private_key_pem[0].name
    secret = azurerm_key_vault_secret.private_key_pem[0].value
  }
  description = "The Key Vault secret which will be used for the vm_key_secret variable in the root module."
  sensitive   = true
}

output "chained_certificate_pem" {
  value = var.chained_certificate_pem == null ? {
    name         = null
    secret       = null
    id           = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.chained_certificate_pem[0].name
    secret       = azurerm_key_vault_secret.chained_certificate_pem[0].value
    id           = azurerm_key_vault_secret.chained_certificate_pem[0].id
    key_vault_id = azurerm_key_vault_secret.chained_certificate_pem[0].key_vault_id
  }
  description = "The Key Vault secret which will be used for the vm_certificate_secret variable in the root module."
  sensitive   = true
}

output "proxy_public_key" {
  value = var.proxy_public_key == null ? {
    name         = null
    secret       = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.proxy_public_key[0].name
    secret       = azurerm_key_vault_secret.proxy_public_key[0].value
    key_vault_id = azurerm_key_vault_secret.proxy_public_key[0].key_vault_id
  }
  description = "The Key Vault secret which will be used for the SSH public_key argument when creating the proxy virtual machine."
  sensitive   = true
}

output "proxy_private_key" {
  value = var.proxy_private_key == null ? {
    name   = null
    secret = null
    } : {
    name   = azurerm_key_vault_secret.proxy_private_key[0].name
    secret = azurerm_key_vault_secret.proxy_private_key[0].value
  }
  description = "The Key Vault secret which will be used for the SSH private key of the proxy virtual machine."
  sensitive   = true
}

output "ca_certificate" {
  value = var.ca_certificate == null ? {
    name         = null
    secret       = null
    id           = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.ca_certificate[0].name
    secret       = azurerm_key_vault_secret.ca_certificate[0].value
    id           = azurerm_key_vault_secret.ca_certificate[0].id
    key_vault_id = azurerm_key_vault_secret.ca_certificate[0].key_vault_id
  }
  description = "The Key Vault secret of the Base64 encoded CA certificate to be trusted by the proxy virtual machine."
  sensitive   = true
}

output "ca_private_key" {
  value = var.ca_private_key == null ? {
    name         = null
    secret       = null
    id           = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.ca_private_key[0].name
    secret       = azurerm_key_vault_secret.ca_private_key[0].value
    id           = azurerm_key_vault_secret.ca_private_key[0].id
    key_vault_id = azurerm_key_vault_secret.ca_private_key[0].key_vault_id
  }
  description = "The Key Vault secret of the Base64 encoded CA private key."
  sensitive   = true
}

output "bastion_public_key" {
  value = var.bastion_public_key == null ? {
    name         = null
    secret       = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.bastion_public_key[0].name
    secret       = azurerm_key_vault_secret.bastion_public_key[0].value
    key_vault_id = azurerm_key_vault_secret.bastion_public_key[0].key_vault_id
  }
  description = "The Key Vault secret which will be used for the SSH public key of the bastion virtual machine."
  sensitive   = true
}

output "bastion_private_key" {
  value = var.bastion_private_key == null ? {
    name         = null
    secret       = null
    key_vault_id = null
    } : {
    name         = azurerm_key_vault_secret.bastion_private_key[0].name
    secret       = azurerm_key_vault_secret.bastion_private_key[0].value
    key_vault_id = azurerm_key_vault_secret.bastion_private_key[0].key_vault_id
  }
  description = "The Key Vault secret which will be used for the SSH private key of the bastion virtual machine."
  sensitive   = true
}
