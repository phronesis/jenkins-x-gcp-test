module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.8"
  gcp_project = "jenkins-terraform-326218"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "pp-ps-jx-terraform-state-files"
    prefix = "terraform/state"
  }
}
