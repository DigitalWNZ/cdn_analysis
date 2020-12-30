- dashboard: cdn_external
  title: cdn_external
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: url_visit_by_metro
    title: url_visit_by_metro
    model: cdn
    explore: cdn_transform
    type: looker_grid
    fields: [cdn_transform.metro, cdn_transform.count]
    sorts: [cdn_transform.count desc]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Metro: cdn_transform.metro
      CacheID: cdn_transform.cacheid
      asn: ip_asn.asn
      url: cdn_transform.request_url
      time: cdn_transform.timestamp_time
    row: 0
    col: 0
    width: 24
    height: 10
  - name: hit_rate_by_metro
    title: hit_rate_by_metro
    model: cdn
    explore: cdn_transform
    type: looker_grid
    fields: [cdn_transform.real_hit_rate, cdn_transform.expect_hit_rate, cdn_transform.metro,
      cdn_transform.count, cdn_transform.count_hit, cdn_transform.count_distinct_url]
    sorts: [cdn_transform.count desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
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
      Metro: cdn_transform.metro
      CacheID: cdn_transform.cacheid
      asn: ip_asn.asn
      url: cdn_transform.request_url
      time: cdn_transform.timestamp_time
    row: 18
    col: 0
    width: 24
    height: 12
  - name: hit_rate_by_date
    title: hit_rate_by_date
    model: cdn
    explore: cdn_transform
    type: looker_line
    fields: [cdn_transform.timestamp_date, cdn_transform.expect_hit_rate, cdn_transform.real_hit_rate]
    fill_fields: [cdn_transform.timestamp_date]
    sorts: [cdn_transform.timestamp_date desc]
    limit: 500
    column_limit: 50
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
      Metro: cdn_transform.metro
      CacheID: cdn_transform.cacheid
      asn: ip_asn.asn
      url: cdn_transform.request_url
      time: cdn_transform.timestamp_time
    row: 10
    col: 0
    width: 24
    height: 8
  - name: latency_by_metro
    title: latency_by_metro
    model: cdn
    explore: cdn_transform
    type: looker_grid
    fields: [cdn_transform.metro, cdn_transform.latency_median, cdn_transform.latency_p50,
      cdn_transform.latency_p90, cdn_transform.latency_p95, cdn_transform.latency_p99]
    sorts: [cdn_transform.latency_median desc]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Metro: cdn_transform.metro
      CacheID: cdn_transform.cacheid
      asn: ip_asn.asn
      url: cdn_transform.request_url
      time: cdn_transform.timestamp_time
    row: 37
    col: 0
    width: 24
    height: 9
  - name: latency_by_date
    title: latency_by_date
    model: cdn
    explore: cdn_transform
    type: looker_line
    fields: [cdn_transform.timestamp_date, cdn_transform.latency_p50, cdn_transform.latency_median,
      cdn_transform.latency_p90, cdn_transform.latency_p95, cdn_transform.latency_p99]
    fill_fields: [cdn_transform.timestamp_date]
    sorts: [cdn_transform.timestamp_date desc]
    limit: 500
    column_limit: 50
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
      Metro: cdn_transform.metro
      CacheID: cdn_transform.cacheid
      asn: ip_asn.asn
      url: cdn_transform.request_url
      time: cdn_transform.timestamp_time
    row: 30
    col: 0
    width: 24
    height: 7
  filters:
  - name: Metro
    title: Metro
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.metro
  - name: CacheID
    title: CacheID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.cacheid
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
  - name: url
    title: url
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.request_url
  - name: time
    title: time
    type: field_filter
    default_value: 3 days
    allow_multiple_values: true
    required: false
    model: cdn
    explore: cdn_transform
    listens_to_filters: []
    field: cdn_transform.timestamp_time
