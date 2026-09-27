terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

resource "random_pet" "name" {
  length = 2
}

output "generated_name" {
  value = random_pet.name.id
}