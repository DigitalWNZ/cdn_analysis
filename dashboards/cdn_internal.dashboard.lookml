- dashboard: cdn_internal
  title: cdn_internal
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: bill_by_country
    title: bill_by_country
    model: cdn
    explore: cdn_transform
    type: looker_grid
    fields: [cdn_transform.sum_cache_fill, cdn_transform.sum_resp_size_hit, cdn_transform.sum_resp_size_miss,
      ip_asn.country, ip_asn.asn]
    sorts: [cdn_transform.sum_cache_fill desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      metro: cdn_transform.metro
      cacheid: cdn_transform.cacheid
      url: cdn_transform.request_url
      asn: ip_asn.asn
      time: cdn_transform.timestamp_time
    row: 54
    col: 0
    width: 24
    height: 12
  - name: URL Exchange History
    title: URL Exchange History
    model: cdn
    explore: retention_interval
    type: looker_grid
    fields: [retention_interval.request_url, retention_interval.timestamp_time, retention_interval.cache_hit,
      retention_interval.prev_timestamp_time, retention_interval.prev_cache_hit, retention_interval.retention_interval]
    sorts: [retention_interval.timestamp_time desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      metro: retention_interval.metro
      cacheid: retention_interval.cacheid
      url: retention_interval.request_url
      asn: ip_asn.asn
      time: retention_interval.timestamp_time
    row: 32
    col: 0
    width: 24
    height: 12
  - title: Retention_by_metro
    name: Retention_by_metro
    model: cdn
    explore: retention_interval
    type: looker_grid
    fields: [retention_interval.metro, retention_interval.retention_interval_p50,
      retention_interval.retention_interval_p90, retention_interval.retention_interval_p95,
      retention_interval.retention_interval_p99]
    sorts: [retention_interval.retention_interval_p50 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      metro: retention_interval.metro
      cacheid: retention_interval.cacheid
      url: retention_interval.request_url
      asn: ip_asn.asn
      time: retention_interval.timestamp_time
    row: 0
    col: 0
    width: 24
    height: 12
  - title: URL Exchange Summary
    name: URL Exchange Summary
    model: cdn
    explore: retention_interval
    type: looker_grid
    fields: [retention_interval.metro, retention_interval.request_url, retention_interval.retention_avg,
      retention_interval.count]
    sorts: [retention_interval.retention_avg desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      metro: retention_interval.metro
      cacheid: retention_interval.cacheid
      url: retention_interval.request_url
      asn: ip_asn.asn
      time: retention_interval.timestamp_time
    row: 24
    col: 0
    width: 24
    height: 8
  - title: URL Access History
    name: URL Access History
    model: cdn
    explore: cdn_transform
    type: looker_grid
    fields: [cdn_transform.request_url, cdn_transform.timestamp_time, cdn_transform.cache_hit,
      cdn_transform.status, cdn_transform.statusdetails]
    sorts: [cdn_transform.timestamp_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      metro: cdn_transform.metro
      cacheid: cdn_transform.cacheid
      url: cdn_transform.request_url
      asn: ip_asn.asn
      time: cdn_transform.timestamp_time
    row: 44
    col: 0
    width: 24
    height: 10
  - title: retent_internval_by_hour
    name: retent_internval_by_hour
    model: cdn
    explore: retention_interval
    type: looker_line
    fields: [retention_interval.timestamp_hour, retention_interval.retention_avg,
      retention_interval.retention_interval_p50, retention_interval.retention_interval_p90,
      retention_interval.retention_interval_p95, retention_interval.retention_interval_p99]
    fill_fields: [retention_interval.timestamp_hour]
    sorts: [retention_interval.timestamp_hour desc]
    limit: 500
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    defaults_version: 1
    listen:
      metro: retention_interval.metro
      cacheid: retention_interval.cacheid
      url: retention_interval.request_url
      asn: ip_asn.asn
      time: retention_interval.timestamp_time
    row: 12
    col: 0
    width: 24
    height: 12
  filters:
  - name: metro
    title: metro
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: retention_interval
    listens_to_filters: []
    field: retention_interval.metro
  - name: cacheid
    title: cacheid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.cacheid
  - name: url
    title: url
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: retention_interval
    listens_to_filters: []
    field: retention_interval.request_url
  - name: asn
    title: asn
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: ip_asn.asn
  - name: time
    title: time
    type: field_filter
    default_value: 2 days
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.timestamp_time
