resource_groups = {
  rg1 = {
    rg_name    = "Avengers-rg-001"
    location   = "brazilsouth"
    managed_by = "IRON-MAN-team"
    tags = {
      environment = "production"
      owner       = "Lead-by-tonystark"
      team        = "Avengers"
    }
  }
}

virtual_networks = {
  vnet-dev1 = {
    vnet_name                      = "vnet-dev01"
    rg_key                         = "rg1"
    # yaha pe rg aur location ki values blank/empty h, because ye values module ke through aa rhi hain
    location                       = ""
    resource_group_name            = ""
    address_space                  = ["10.10.0.0/16"]
    dns_servers                    = []
    bgp_community                  = null
    edge_zone                      = null
    flow_timeout_in_minutes        = null
    private_endpoint_vnet_policies = "Basic"
    tags = {
      environment = "Development"
      owner       = "DevOps"
    }

    # ip_address_pools     = [{
    #     id                     = "/subscriptions/xxxx/resourceGroups/rg-development/providers/Microsoft.Network/ipAddressPools/pool1"
    #     number_of_ip_addresses = "100"
    # }]

    ddos_protection_plan = null
    encryption           = null

    subnets = [
      {
        name                                          = "vnet-dev01-subnet01"
        address_prefixes                              = ["10.10.1.0/24"]
        security_group_id                             = null
        route_table_id                                = null
        service_endpoints                             = ["Microsoft.Storage"]
        service_endpoint_policy_ids                   = []
        default_outbound_access_enabled               = true
        private_endpoint_network_policies             = "Disabled"
        private_link_service_network_policies_enabled = true
        delegations                                   = []
      },
      {
        name                                          = "vnet-dev01-subnet02"
        address_prefixes                              = ["10.10.2.0/24"]
        security_group_id                             = null
        route_table_id                                = null
        service_endpoints                             = ["Microsoft.Storage"]
        service_endpoint_policy_ids                   = []
        default_outbound_access_enabled               = true
        private_endpoint_network_policies             = "Disabled"
        private_link_service_network_policies_enabled = true
        delegations                                   = []
      }
    ]
  }

  vnet-prod = {
    vnet_name                      = "vnet-prod01"
    # yaha pe rg aur location ki values blank/empty h, because ye values module ke through aa rhi hain
    location                       = ""
    resource_group_name            = ""
    rg_key                         = "rg1"
    address_space                  = ["10.12.0.0/16"]
    dns_servers                    = []
    bgp_community                  = null
    edge_zone                      = null
    flow_timeout_in_minutes        = null
    private_endpoint_vnet_policies = "Basic"
    tags = {
      environment = "Development"
      owner       = "DevOps"
    }

    # ip_address_pools     = [{
    #     id                     = "/subscriptions/xxxx/resourceGroups/rg-development/providers/Microsoft.Network/ipAddressPools/pool1"
    #     number_of_ip_addresses = "100"
    # }]

    ddos_protection_plan = null
    encryption           = null

    subnets = [
      {
        name                                          = "vnet-prod01-subnet01"
        address_prefixes                              = ["10.12.1.0/24"]
        security_group_id                             = null
        route_table_id                                = null
        service_endpoints                             = ["Microsoft.Storage"]
        service_endpoint_policy_ids                   = []
        default_outbound_access_enabled               = true
        private_endpoint_network_policies             = "Disabled"
        private_link_service_network_policies_enabled = true
        delegations                                   = []
      },
      {
        name                                          = "vnet-prod01-subnet02"
        address_prefixes                              = ["10.12.2.0/24"]
        security_group_id                             = null
        route_table_id                                = null
        service_endpoints                             = ["Microsoft.Storage"]
        service_endpoint_policy_ids                   = []
        default_outbound_access_enabled               = true
        private_endpoint_network_policies             = "Disabled"
        private_link_service_network_policies_enabled = true
        delegations                                   = []
      }
    ]
  }
}
