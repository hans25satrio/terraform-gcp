provider "google" {
  credentials = file("hans-test-c12aac521911.json")
  project     = "${var.project-name}"
  region      = "${var.region}"
}
