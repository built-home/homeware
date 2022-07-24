# resource "proxmox_vm_qemu" {
#   name = "Kali Linux"
#   desc = "security lab desktop"
#   vmid = "102"
#   target_node = "proxmox"
#   agent = 1
#   cores = 2
#   sockets = 1
#   cpu = "host"
#   memory = 2048

#   network {
#     bridge = var.network_bridge
#     model = "virtio"
#   }

#   disk {
#     storage = "local-lvm"
#     type = "virtio"
#     size = "20G"
#   }
# }