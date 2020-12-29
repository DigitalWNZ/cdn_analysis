view: retention_interval {
  derived_table: {
    sql: with flat as (
       select
        substr(jsonpayload_type_loadbalancerlogentry.cacheid,1,3) as metro,
        timestamp,
        httpRequest.requestUrl,
        httpRequest.cacheHit,
        lag(substr(jsonpayload_type_loadbalancerlogentry.cacheid,1,3)) over (partition by httpRequest.requestUrl order by timestamp) as prev_metro,
        lag(timestamp) over (partition by httpRequest.requestUrl order by timestamp) as prev_timestamp,
        lag(httpRequest.cacheHit) over (partition by httpRequest.requestUrl order by timestamp) as prev_cache_hit
      from `allen-first.yunceng.cdnlog` clog)
      select metro,timestamp,requestUrl,cacheHit,prev_metro,prev_timestamp,prev_cache_hit,timestamp_diff(timestamp, prev_timestamp,second) as retention_interval from flat
      where prev_timestamp is not null
      and cacheHit = True and prev_cache_hit is null
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  dimension: request_url {
    type: string
    sql: ${TABLE}.requestUrl ;;
  }

  dimension: cache_hit {
    type: string
    sql: ${TABLE}.cacheHit ;;
  }

  dimension: prev_metro {
    type: string
    sql: ${TABLE}.prev_metro ;;
  }

  dimension_group: prev_timestamp {
    type: time
    sql: ${TABLE}.prev_timestamp ;;
  }

  dimension: prev_cache_hit {
    type: string
    sql: ${TABLE}.prev_cache_hit ;;
  }

  dimension: retention_interval {
    type: number
    sql: ${TABLE}.retention_interval ;;
  }

  set: detail {
    fields: [
      metro,
      timestamp_time,
      request_url,
      cache_hit,
      prev_metro,
      prev_timestamp_time,
      prev_cache_hit,
      retention_interval
    ]
  }
}
