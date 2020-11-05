provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
    name = "tf-cloudbuild-3"
    machine_type = "f1-micro"
    
    scheduling {
        automatic_restart = false
        preemptible = true
        }
    
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
        } 

    network_interface {
        # A default network is created for all GCP projects
        network = "default"
        access_config {

        }
        }
}

