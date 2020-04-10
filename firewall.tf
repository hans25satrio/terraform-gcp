resource "google_compute_firewall" "ssh" {
  name    = "${var.network}-firewall-ssh"
  network = "${google_compute_network.hans_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["${var.network}-firewall-ssh"]
  source_ranges = ["36.79.113.238/32"]
}

resource "google_compute_firewall" "http" {
  name    = "${var.network}-firewall-http"
  network = "${google_compute_network.hans_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["${var.network}-firewall-http"]
  source_ranges = ["36.79.113.238/32"]
}

resource "google_compute_firewall" "https" {
  name    = "${var.network}-firewall-https"
  network = "${google_compute_network.hans_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags   = ["${var.network}-firewall-https"]
  source_ranges = ["36.79.113.238/32"]
}

resource "google_compute_firewall" "icmp" {
  name    = "${var.network}-firewall-icmp"
  network = "${google_compute_network.hans_network.name}"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["${var.network}-firewall-icmp"]
  source_ranges = ["36.79.113.238/32"]
}

resource "google_compute_firewall" "all" {
  name    = "${var.network}-firewall-all"
  network = "${google_compute_network.hans_network.name}"

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  target_tags   = ["${var.network}-firewall-icmp"]
  source_ranges = ["10.128.0.0/9"]
}