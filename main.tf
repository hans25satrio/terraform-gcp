resource "google_compute_instance" "hans-engine-instance-public" {
  name = "hans-engine-public"

  ## for a setup having multiple instances of the same type, you can do
  ## the following, there would be 2 instances of the same configuration
  ## provisioned
# count        = 3
# name         = "${var.instance-name}-${count.index}"
  machine_type = "${var.vm_type}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-all"
  ]

  boot_disk {
   initialize_params {
     image = "${var.os}"
   }
 }

  network_interface {
    subnetwork = "${google_compute_subnetwork.hans_network_subnetwork.name}"

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "hans-engine-instance-private-1" {
  name = "hans-engine-private-1"

  ## for a setup having multiple instances of the same type, you can do
  ## the following, there would be 2 instances of the same configuration
  ## provisioned
#   count        = 1
#   name         = "${var.instance-name}-${count.index}"
  machine_type = "${var.vm_type}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-all"
  ]

  boot_disk {
   initialize_params {
     image = "${var.os}"
   }
 }

  network_interface {
    subnetwork = "${google_compute_subnetwork.hans_network_subnetwork.name}"

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "hans-engine-instance-private-2" {
  name = "hans-engine-private-2"

  ## for a setup having multiple instances of the same type, you can do
  ## the following, there would be 2 instances of the same configuration
  ## provisioned
#   count        = 1
#   name         = "${var.instance-name}-${count.index}"
  machine_type = "${var.vm_type}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-all"
  ]

  boot_disk {
   initialize_params {
     image = "${var.os}"
   }
 }

  network_interface {
    subnetwork = "${google_compute_subnetwork.hans_network_subnetwork.name}"

    access_config {
      // Ephemeral IP
    }
  }
}