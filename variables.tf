variable "instance-name" {
  default = "hans-engine" 
}
variable "region" {
  default = "asia-southeast1-a" # Singapore
}

variable "project-name" {
  default = "hans-test-273709"
}

variable "subnetwork-region" {
  default = "asia-southeast1"
}

variable "network" {
  default = "hans-network"
}

variable "vm_type" {
  default  = "f1-micro"
    # "1point7gig" = "g1-small"
    # "7point5gig" = "n1-standard-2"
}

variable "os" {
  default = "centos-7-v20200403"
    # "debian9"         = "debian-9-stretch-v20170816"
    # "ubuntu-1604-lts" = "ubuntu-1604-xenial-v20170815a"
    # "ubuntu-1704"     = "ubuntu-1704-zesty-v20170811"
}
