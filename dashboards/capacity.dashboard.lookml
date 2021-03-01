- dashboard: capaicty
  title: capaicty
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: capacity by PoP
    name: capacity by PoP
    model: cdn
    explore: final
    type: looker_map
    fields: [final.loc_point, final.capcity_by_point, final.airport]
    filters: {}
    sorts: [final.loc_point]
    limit: 2000
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 25.24904334375518
    map_longitude: -18.78318786621094
    map_zoom: 3
    map_marker_radius_min: 10
    map_marker_radius_max: 300000
    defaults_version: 1
    series_types: {}
    listen:
      Airport: final.airport
      City: final.city
      Country: final.country
    row: 0
    col: 0
    width: 24
    height: 14
  filters:
  - name: Airport
    title: Airport
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cdn
    explore: final
    listens_to_filters: []
    field: final.airport
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cdn
    explore: final
    listens_to_filters: []
    field: final.city
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cdn
    explore: final
    listens_to_filters: []
    field: final.country
