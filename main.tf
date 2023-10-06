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
  endpoint = "http://localhost:4567"
  user_uuid = "e328f4ab-b99f-421c-84c9-4ccea042c7d1"
  token = "9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   user_uuid = var.user_uuid
#   bucket_name = var.bucket_name
#   index_html_filepath = var.index_html_filepath
#   error_html_filepath = var.error_html_filepath
#   content_version = var.content_version
# }

resource "terratown_home" "home" {
  name = "How to play Star Wars: The Old Republic (SWTOR)"
  description = <<DESCRIPTION
SWTOR is a MMORPG based in the Star Wars world.
It was made by Bioware.
It was released in 2011. This is a guide about how to play SWTOR.
DESCRIPTION  
 # domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "mocked.cloudfront.net"
  town = "gamers-grotto"
  content_version = 1 
}