terraform {
  backend "azurerm" {
 
    key                  = "private-dns.tfstate"
  }
}