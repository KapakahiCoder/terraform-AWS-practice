# Terraform BC - Week 1

## Root Module Structure

Root module structure is as follows:
```
PROJECT_ROOT
│
├── main.tf           # everything else
│
├── variables.tf      # stores the structure of input variables
│
├── providers.tf      # defined required providers and their configuration
│
├── outputs.tf        # stores outputs
│
├── terraform.tfvars  # the data of variables we want to load into terraform project
│
└── README.md         # required for root modules
```


[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)
