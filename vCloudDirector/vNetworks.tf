resource "vcd_network_routed_v2" "Production_LAN" {
  name = "Production_LAN"

  edge_gateway_id = "urn:vcloud:gateway:00f5f5ff-5555-5555-f5ff-f7f5fff5fff"


 gateway            = "10.0.0.254"
  prefix_length      = 24
  guest_vlan_allowed = false

  static_ip_pool {
    start_address = "10.0.0.1"
    end_address   = "10.0.0.253"
  }
}
