terraform {
  cloud {
    organization = "Terra-POC-2"

    workspaces {
      name = "Terra-POC-2"
    }
  }
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id     = "714e316b-6fcb-4a16-8837-ce4a011eaa90"
  oauthclient_secret = "RtoCo9EClcozcgukm5m3R6sjUJRvr176slgRaQb8vM8"
  aws_region         = "us-west-2"
}
