terraform {
  backend "gcs" {
    bucket = "sg-sandbox-285909-tfstate"
    prefix = "env/dev"
  }
}