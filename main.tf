terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "Kapakahi"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
/*   cloud {
    organization = "Kapakahi"

    workspaces {
      name = "terra-house"
    }
  } */
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}