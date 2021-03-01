view: final {
  sql_table_name: `allen-first.rackdata.final`
    ;;

  dimension: airport {
    type: string
    sql: ${TABLE}.airport ;;
  }

  dimension: allocated_netblocks_0_category_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_category_2 ;;
  }

  dimension: allocated_netblocks_0_category_3 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_category_3 ;;
  }

  dimension: allocated_netblocks_0_ip_block_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_ip_block_0 ;;
  }

  dimension: allocated_netblocks_0_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_ip_block_1 ;;
  }

  dimension: allocated_netblocks_0_net_config_name_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_net_config_name_1 ;;
  }

  dimension: allocated_netblocks_0_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_note_0 ;;
  }

  dimension: allocated_netblocks_0_split_policy_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_split_policy_1 ;;
  }

  dimension: allocated_netblocks_0_split_policy_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_0_split_policy_2 ;;
  }

  dimension: allocated_netblocks_1_category_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_category_1 ;;
  }

  dimension: allocated_netblocks_1_category_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_category_2 ;;
  }

  dimension: allocated_netblocks_1_category_3 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_category_3 ;;
  }

  dimension: allocated_netblocks_1_ip_block_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_ip_block_0 ;;
  }

  dimension: allocated_netblocks_1_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_ip_block_1 ;;
  }

  dimension: allocated_netblocks_1_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_note_0 ;;
  }

  dimension: allocated_netblocks_1_split_policy_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_1_split_policy_2 ;;
  }

  dimension: allocated_netblocks_2_category_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_2_category_2 ;;
  }

  dimension: allocated_netblocks_2_category_3 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_2_category_3 ;;
  }

  dimension: allocated_netblocks_2_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_2_ip_block_1 ;;
  }

  dimension: allocated_netblocks_2_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_2_note_0 ;;
  }

  dimension: allocated_netblocks_2_split_policy_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_2_split_policy_2 ;;
  }

  dimension: allocated_netblocks_3_category_3 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_3_category_3 ;;
  }

  dimension: allocated_netblocks_3_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_3_ip_block_1 ;;
  }

  dimension: allocated_netblocks_3_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_3_note_0 ;;
  }

  dimension: allocated_netblocks_3_split_policy_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_3_split_policy_2 ;;
  }

  dimension: allocated_netblocks_4_category_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_4_category_2 ;;
  }

  dimension: allocated_netblocks_4_category_3 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_4_category_3 ;;
  }

  dimension: allocated_netblocks_4_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_4_ip_block_1 ;;
  }

  dimension: allocated_netblocks_4_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_4_note_0 ;;
  }

  dimension: allocated_netblocks_4_split_policy_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_4_split_policy_2 ;;
  }

  dimension: allocated_netblocks_5_category_2 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_5_category_2 ;;
  }

  dimension: allocated_netblocks_5_ip_block_1 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_5_ip_block_1 ;;
  }

  dimension: allocated_netblocks_5_note_0 {
    type: string
    sql: ${TABLE}.AllocatedNetblocks_5_note_0 ;;
  }

  dimension: as_number {
    type: string
    sql: ${TABLE}.AsNumber ;;
  }

  dimension: borg_config_0_cell_0 {
    type: string
    sql: ${TABLE}.borg_config_0_cell_0 ;;
  }

  dimension: cgnenabled {
    type: string
    sql: ${TABLE}.CGNEnabled ;;
  }

  dimension: cidr {
    type: string
    sql: ${TABLE}.Cidr ;;
  }

  dimension: cidr6 {
    type: string
    sql: ${TABLE}.Cidr6 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: covered_vipcidr {
    type: string
    sql: ${TABLE}.CoveredVIPCidr ;;
  }

  dimension: covered_vipcidr6 {
    type: string
    sql: ${TABLE}.CoveredVIPCidr6 ;;
  }

  dimension: dev_rack {
    type: string
    sql: ${TABLE}.DevRack ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: disk_count {
    type: string
    sql: ${TABLE}.DiskCount ;;
  }

  dimension: do_not_reference_directly_capability_class_name {
    type: string
    sql: ${TABLE}.DoNotReferenceDirectly_CapabilityClassName ;;
  }

  dimension: enable_vipsharding {
    type: string
    sql: ${TABLE}.EnableVIPSharding ;;
  }

  dimension: first_ip {
    type: string
    sql: ${TABLE}.FirstIP ;;
  }

  dimension: first_vip {
    type: string
    sql: ${TABLE}.FirstVIP ;;
  }

  dimension: hardware_type {
    type: string
    sql: ${TABLE}.HardwareType ;;
  }

  dimension: hardware_type_str {
    type: string
    sql: ${TABLE}.HardwareTypeStr ;;
  }

  dimension: has_video_vips {
    type: string
    sql: ${TABLE}.HasVideoVips ;;
  }

  dimension: in_turndown {
    type: string
    sql: ${TABLE}.InTurndown ;;
  }

  dimension: intended_lacp_state_0_per_link_mbps_1 {
    type: string
    sql: ${TABLE}.IntendedLacpState_0_per_link_mbps_1 ;;
  }

  dimension: intended_lacp_state_0_total_links_2 {
    type: string
    sql: ${TABLE}.IntendedLacpState_0_total_links_2 ;;
  }

  dimension: internal_cidr {
    type: string
    sql: ${TABLE}.InternalCidr ;;
  }

  dimension: internal_cidr6 {
    type: string
    sql: ${TABLE}.InternalCidr6 ;;
  }

  dimension: is_trusted {
    type: string
    sql: ${TABLE}.IsTrusted ;;
  }

  dimension: is_trusted_location {
    type: string
    sql: ${TABLE}.IsTrustedLocation ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: letters_3 {
    type: string
    sql: ${TABLE}.letters_3 ;;
  }

  dimension: letters_4 {
    type: string
    sql: ${TABLE}.letters_4 ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: loc_point {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lng} ;;
  }

  dimension: capacity {
    type: number
    sql: safe_cast(${intended_lacp_state_0_per_link_mbps_1} as INT64) * safe_cast(${intended_lacp_state_0_total_links_2} as INT64);;
  }

  measure:capcity_by_point{
    type: sum
    sql: ${capacity} ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: md5_password {
    type: string
    sql: ${TABLE}.MD5Password ;;
  }

  dimension: mdb_name {
    type: string
    sql: ${TABLE}.mdb_name ;;
  }

  dimension: metroshard {
    type: string
    sql: ${TABLE}.metroshard ;;
  }

  dimension: name_cap {
    type: string
    sql: ${TABLE}.Name_cap ;;
  }

  dimension: name_rack {
    type: string
    sql: ${TABLE}.Name_rack ;;
  }

  dimension: net_name {
    type: string
    sql: ${TABLE}.NetName ;;
  }

  dimension: number_hosts {
    type: string
    sql: ${TABLE}.NumberHosts ;;
  }

  dimension: number_vips {
    type: string
    sql: ${TABLE}.NumberVips ;;
  }

  dimension: number_vips_shared_serving {
    type: string
    sql: ${TABLE}.NumberVipsSharedServing ;;
  }

  dimension: peer_address {
    type: string
    sql: ${TABLE}.PeerAddress ;;
  }

  dimension: peer_address6 {
    type: string
    sql: ${TABLE}.PeerAddress6 ;;
  }

  dimension: performance_class_tag_0 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_0 ;;
  }

  dimension: performance_class_tag_1 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_1 ;;
  }

  dimension: performance_class_tag_2 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_2 ;;
  }

  dimension: performance_class_tag_3 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_3 ;;
  }

  dimension: performance_class_tag_4 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_4 ;;
  }

  dimension: performance_class_tag_5 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_5 ;;
  }

  dimension: performance_class_tag_6 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_6 ;;
  }

  dimension: performance_class_tag_7 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_7 ;;
  }

  dimension: rack_labels_0 {
    type: string
    sql: ${TABLE}.RackLabels_0 ;;
  }

  dimension: rack_labels_1 {
    type: string
    sql: ${TABLE}.RackLabels_1 ;;
  }

  dimension: rack_labels_10 {
    type: string
    sql: ${TABLE}.RackLabels_10 ;;
  }

  dimension: rack_labels_11 {
    type: string
    sql: ${TABLE}.RackLabels_11 ;;
  }

  dimension: rack_labels_2 {
    type: string
    sql: ${TABLE}.RackLabels_2 ;;
  }

  dimension: rack_labels_3 {
    type: string
    sql: ${TABLE}.RackLabels_3 ;;
  }

  dimension: rack_labels_4 {
    type: string
    sql: ${TABLE}.RackLabels_4 ;;
  }

  dimension: rack_labels_5 {
    type: string
    sql: ${TABLE}.RackLabels_5 ;;
  }

  dimension: rack_labels_6 {
    type: string
    sql: ${TABLE}.RackLabels_6 ;;
  }

  dimension: rack_labels_7 {
    type: string
    sql: ${TABLE}.RackLabels_7 ;;
  }

  dimension: rack_labels_8 {
    type: string
    sql: ${TABLE}.RackLabels_8 ;;
  }

  dimension: rack_labels_9 {
    type: string
    sql: ${TABLE}.RackLabels_9 ;;
  }

  dimension: ram_kilobytes {
    type: string
    sql: ${TABLE}.RamKilobytes ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: router_monitoring_enabled {
    type: string
    sql: ${TABLE}.RouterMonitoringEnabled ;;
  }

  dimension: service_groups_0_gfiber_info_0_has_vpr_2 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_GFiberInfo_0_HasVPR_2 ;;
  }

  dimension: service_groups_0_gfiber_info_0_wormhole_v4_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_GFiberInfo_0_Wormhole_v4_0 ;;
  }

  dimension: service_groups_0_gfiber_info_0_wormhole_v4_1 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_GFiberInfo_0_Wormhole_v4_1 ;;
  }

  dimension: service_groups_0_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_ServiceName_0 ;;
  }

  dimension: service_groups_0_vlan_info_0_cidr_1 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_VlanInfo_0_cidr_1 ;;
  }

  dimension: service_groups_0_vlan_info_0_routing_entry_2 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_VlanInfo_0_routing_entry_2 ;;
  }

  dimension: service_groups_0_vlan_info_0_vlan_id_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_0_VlanInfo_0_vlan_id_0 ;;
  }

  dimension: service_groups_1_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_1_ServiceName_0 ;;
  }

  dimension: service_groups_2_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_2_ServiceName_0 ;;
  }

  dimension: service_groups_3_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_3_ServiceName_0 ;;
  }

  dimension: service_groups_4_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_4_ServiceName_0 ;;
  }

  dimension: service_groups_5_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_5_ServiceName_0 ;;
  }

  dimension: service_groups_6_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_6_ServiceName_0 ;;
  }

  dimension: service_groups_7_service_name_0 {
    type: string
    sql: ${TABLE}.ServiceGroups_7_ServiceName_0 ;;
  }

  dimension: sharding_id {
    type: string
    sql: ${TABLE}.ShardingId ;;
  }

  dimension: streaming_capacity_mbps {
    type: string
    sql: ${TABLE}.StreamingCapacityMbps ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.Suffix ;;
  }

  dimension: suppress_aaaaresolution {
    type: string
    sql: ${TABLE}.SuppressAAAAResolution ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: type_str {
    type: string
    sql: ${TABLE}.TypeStr ;;
  }

  measure: count {
    type: count
    drill_fields: [do_not_reference_directly_capability_class_name, net_name, mdb_name]
  }
}
