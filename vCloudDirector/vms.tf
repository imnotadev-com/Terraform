resource "vcd_vapp_vm" "DC01" {
  vapp_name        = "Production_vApp"
  name             = "DC01"
  vapp_template_id = "urn:vcloud:appTemplate:4a44aa44-4444-44aa-4444-4444a444aa44a"
  memory           = 4096
  cpus             = 2
  cpu_cores        = 2
  power_on         = true

  depends_on = [vcd_vapp.Production_vApp, vcd_network_routed_v2.Production_LAN]

  network {
    type               = "none"
    name               = "vcd_vapp_network.vapp-net.Production_LAN"
    ip_allocation_mode = "POOL"
    adapter_type       = "VMXNET3"
    connected          = "false"
  }
}


resource "vcd_vapp_vm" "IIS01" {
  vapp_name        = "Production_vApp"
  name             = "IIS01"
  vapp_template_id = "urn:vcloud:appTemplate:4a44aa44-4444-44aa-4444-4444aa44aa44a"
  memory           = 4096
  cpus             = 2
  cpu_cores        = 2
  power_on         = true


  depends_on = [vcd_vapp.Production_vApp, vcd_network_routed_v2.Production_LAN, vcd_vapp_vm.DC01]


}
