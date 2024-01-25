resource "vcd_vapp" "Production_vApp" {
  description = "This is the Production vApp"
  name        = "Production_vApp"
  power_on    = true
}


resource "vcd_vapp_org_network" "Production_LAN" {
  vapp_name = "Production_vApp"
  org_network_name = "Production_LAN"
  depends_on = [vcd_vapp.Production_vApp, vcd_network_routed_v2.Production_LAN]
}
