variable "nfs_disk_size" {
  default = 3
}

variable "flavors" {
  type = "map"
  default = {
    "central-manager" = "m1.medium"
    "exec-node" = "m1.large"
    "nfs-server" = "m1.medium"
  }
}

variable "exec_node_count" {
  default = 2
}

variable "image" {
  type = "map"
  default = {
    "name" = "vggp-v31-j117"
    "image_source_url" = "https://usegalaxy.eu/static/vgcn/vggp-v31-j117-124d6d4a9be5-master.raw"
    "container_format" = "bare"
    "disk_format" = "raw"
   }
}

variable "public_key" {
  default = "ssh-rsa blablablabla..."
}

variable "name_prefix" {
  default = "vgcn-"
}

variable "name_suffix" {
  default = ".usegalaxy.eu"
}

variable "secgroups" {
  default = [
    "vgcn-ingress-public",
    "vgcn-egress-public",
  ]
}

variable "network" {
  default = [
    {
      name = "galaxy-net"
    },
  ]
}