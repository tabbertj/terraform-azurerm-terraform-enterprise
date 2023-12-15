# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

locals {
  # Azure Resource Groups
  # ---------------------
  # Determine Azure resource group names based on optional values
  #   by default a new resource group will be created and used
  #   additionally, the same resource group will be used for dns
  #   and kv if alternative resource group names are not supplied
  resource_group_name     = "tfe-azure"
  resource_group_name_dns = "tfe-azure"
}


