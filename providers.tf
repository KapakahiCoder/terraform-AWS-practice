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
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}