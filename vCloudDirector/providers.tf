##### Provider #####

terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.11.0"
    }
  }
}

##### Password Auth Start #####

provider "vcd" {
  user                 = "username"
  password             = "password"
  auth_type            = "integrated"
  org                  = "org_name"
  vdc                  = "vdc_name"
  url                  = "https://my-vcloud-director-url/api"
}
