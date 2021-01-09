resource "google_compute_firewall" "prefect_server_firewall" {
  name    = "prefect-server-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  allow {
    protocol = "udp"
    ports    = ["8080"]
  }

  allow {
    protocol = "tcp"
    ports    = ["4200"]
  }

  allow {
    protocol = "udp"
    ports    = ["4200"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["prefect-server"]

}

resource "google_compute_network" "default" {
  name = "test-network"
}