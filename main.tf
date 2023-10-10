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
  cloud {
    organization = "Kapakahi"

    workspaces {
      name = "terra-house"
    }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint 
  user_uuid = var.teacherseat_user_uuid 
  token = var.terratowns_access_token
}

module "home_swtor_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid 
  public_path = var.swtor.public_path
  content_version = var.swtor.content_version
}

resource "terratowns_home" "home" {
  name = "All About Star Wars: The Old Republic (SWTOR)"
  description = <<DESCRIPTION
SWTOR is a MMORPG based in the Star Wars world!!!
It was made by Bioware.
It was released in 2011. This is a guide about how to play SWTOR.
DESCRIPTION  
  domain_name = module.home_swtor_hosting.domain_name
  town = "missingo"
  content_version = var.swtor.content_version
}

module "home_cadbury_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid 
  public_path = var.cadbury.public_path
  content_version = var.cadbury.content_version
}

resource "terratowns_home" "home_cadbury" {
  name = "Easter's Cadbury Creme Eggs"
  description = <<DESCRIPTION
I love these candy.
Usually only can buy during Easter.
DESCRIPTION  
  domain_name = module.home_cadbury_hosting.domain_name
  town = "missingo"
  content_version = var.cadbury.content_version
}
