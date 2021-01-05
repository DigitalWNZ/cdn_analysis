view: cdn_transform {
  derived_table: {
    sql: SELECT
      substr(jsonpayload_type_loadbalancerlogentry.cacheid,1,3) as metro,
      jsonpayload_type_loadbalancerlogentry.cacheid,
      jsonpayload_type_loadbalancerlogentry.statusdetails,
      timestamp,
      httpRequest.requestUrl,
      httpRequest.status,
      httpRequest.responseSize,
      httpRequest.userAgent,
      httpRequest.remoteIp,
      httpRequest.latency,
      httpRequest.cacheHit,
      httpRequest.cacheFillBytes
      FROM `allen-first.yunceng.cdnlog_new` clog
      where httpRequest.userAgent not like '%GFE%'
      ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_hit {
    type: count
    filters: [cache_hit:"-NULL"]
  }

  measure: real_hit_rate {
    type: number
    sql: ${count_hit}/${count} ;;
    value_format_name: percent_4
  }

  measure: count_distinct_url {
    type: count_distinct
    sql: ${request_url} ;;
  }

  measure: expect_hit_rate {
    type: number
    sql: (1 - ${count_distinct_url}/${count}) ;;
    value_format_name: percent_4
  }

  measure: latency_p50 {
    type: percentile
    percentile: 50
    sql: ${latency} ;;
    filters: [cache_hit: "NULL"]
  }

  measure: latency_p90 {
    type: percentile
    percentile: 90
    sql: ${latency} ;;
    filters: [cache_hit: "NULL"]
  }

  measure: latency_p95 {
    type: percentile
    percentile: 95
    sql: ${latency} ;;
    filters: [cache_hit: "NULL"]
  }

  measure: latency_p99 {
    type: percentile
    percentile: 99
    sql: ${latency} ;;
    filters: [cache_hit: "NULL"]
  }

  measure: latency_median {
    type: median
    sql: ${latency} ;;
    filters: [cache_hit: "NULL"]
  }

  measure: sum_resp_size {
    type: sum
    sql: ${response_size};;
  }

  measure: bandwidth {
    type: number
    sql: ${sum_resp_size}/{% parameter num_of_seconds %} * {% parameter num_of_bits %} ;;
    value_format_name: decimal_0
  }

  measure: sum_resp_size_hit {
    type: sum
    sql: ${response_size} ;;
    filters: [cache_hit: "-NULL"]
  }

  measure: sum_resp_size_miss {
    type: sum
    sql: ${response_size} ;;
    filters: [cache_hit: "NULL",statusdetails: "response_sent_by_backend"]
  }

  measure: sum_cache_fill {
    type: sum
    sql: ${cache_fill_bytes} ;;
  }


  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
    drill_fields: [cacheid,ip_asn.asn]
  }

  dimension: cacheid {
    type: string
    sql: ${TABLE}.cacheid ;;
    drill_fields: [ip_asn.asn]
  }

  dimension: statusdetails {
    type: string
    sql: ${TABLE}.statusdetails ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [time,date,hour]
    sql: ${TABLE}.timestamp ;;
  }


  parameter: num_of_seconds {
    description: "the number of seconds"
    type: unquoted
    default_value: "30"
  }

  parameter: num_of_bits {
    description: "the number of bits per byte"
    type: unquoted
    default_value: "8"
  }

  parameter: num_of_minutes {
    description: "the number of minutes"
    type: unquoted
    default_value: "15"
  }

  dimension: timekey {
    label_from_parameter: num_of_seconds
    type: string
    sql:
      safe_cast(TIMESTAMP_SECONDS({% parameter num_of_seconds %} * DIV(UNIX_SECONDS(timestamp(${timestamp_time})), {% parameter num_of_seconds %})) as string);;
  }

  dimension: timekey_min {
    label_from_parameter: num_of_minutes
    type: string
    sql:
      safe_cast(TIMESTAMP_SECONDS({% parameter num_of_minutes %}*60 * DIV(UNIX_SECONDS(timestamp(${timestamp_time})), {% parameter num_of_minutes %}*60)) as string);;
  }

  dimension: request_url {
    type: string
    sql: ${TABLE}.requestUrl ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: response_size {
    type: number
    sql: ${TABLE}.responseSize ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.userAgent ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remoteIp ;;
  }

  dimension: latency {
    type: number
    sql: ${TABLE}.latency ;;
  }

  dimension: cache_hit {
    type: string
    sql: ${TABLE}.cacheHit ;;
  }

  dimension: cache_fill_bytes {
    type: number
    sql: ${TABLE}.cacheFillBytes ;;
  }


  set: detail {
    fields: [
      metro,
      statusdetails,
      timestamp_time,
      request_url,
      status,
      response_size,
      user_agent,
      remote_ip,
      latency,
      cache_hit,
      cache_fill_bytes
    ]
  }
}
