# This file needs to be updated with correct value at part of pipeline execution.

terraform {
  backend "azurerm" {
 
    key                  = "riana-layer.tfstate"
  }
}