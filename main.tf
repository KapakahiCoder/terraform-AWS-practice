terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
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

provider "terratowns" {
  endpoint = var.terratowns_endpoint 
  user_uuid = var.teacherseat_user_uuid 
  token = var.terratowns_access_token
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid 
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version = var.content_version
  assets_path = var.assets_path
}

resource "terratowns_home" "home" {
  name = "All About Star Wars: The Old Republic (SWTOR)"
  description = <<DESCRIPTION
SWTOR is a MMORPG based in the Star Wars world.
It was made by Bioware.
It was released in 2011. This is a guide about how to play SWTOR.
DESCRIPTION  
  domain_name = module.terrahouse_aws.cloudfront_url
  town = "missingo"
  content_version = 1 
}