locals {
  config_data = jsondecode(file("../config.json"))
}



module "private-dns" {
  count                 = local.config_data.private-dns.inflate && length(local.config_data.private-dns.private-dns-name) > 0 ? 1 : 0
  source                = "./1-private-dns"
  resource-group-name   = local.config_data.common.resource-group-name
  private-dns-name = local.config_data.private-dns.private-dns-name
  tags                  = local.config_data.common.tags
                          }