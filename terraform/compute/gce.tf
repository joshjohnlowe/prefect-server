resource "google_compute_instance" "prefect_server" {
	name = "prefect-server"
	machine_type = "f1-micro"
	zone = "australia-southeast1-a"

	tags = ["prefect-server"]

	boot_disk {
		initialize_params {
			image = "ubuntu-os-cloud/ubuntu-1804-bionic-v20190403"
		}
	}

	network_interface {
		network = "default"
		access_config {
			// Ephemeral ID
		}
	}

	// metadata_startup_script = templatefile("${path.module}/scripts/server_startup_script.sh", {})
}


