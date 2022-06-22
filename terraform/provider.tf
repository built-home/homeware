terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_key" {
  type = string
}

variable "proxmox_api_secret" {
  type = string
}


provider "proxmox" {
  pm_api_url = var.proxmox_api_url
  pm_api_token_id = var.proxmox_api_key
  pm_api_token_secret = var.proxmox_api_secret
}