connection: "cdn"

# include all the views
include: "/views/**/*.view"

datagroup: cdn_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cdn_default_datagroup

explore: cdn_transform {}

explore: cdnlog {
  join: cdnlog__resource {
    view_label: "Cdnlog: Resource"
    sql: LEFT JOIN UNNEST([${cdnlog.resource}]) as cdnlog__resource ;;
    relationship: one_to_one
  }

  join: cdnlog__resource__labels {
    view_label: "Cdnlog: Resource Labels"
    sql: LEFT JOIN UNNEST([${cdnlog__resource.labels}]) as cdnlog__resource__labels ;;
    relationship: one_to_one
  }

  join: cdnlog__jsonpayload_type_loadbalancerlogentry {
    view_label: "Cdnlog: Jsonpayload Type Loadbalancerlogentry"
    sql: LEFT JOIN UNNEST([${cdnlog.jsonpayload_type_loadbalancerlogentry}]) as cdnlog__jsonpayload_type_loadbalancerlogentry ;;
    relationship: one_to_one
  }

  join: cdnlog__http_request {
    view_label: "Cdnlog: Httprequest"
    sql: LEFT JOIN UNNEST([${cdnlog.http_request}]) as cdnlog__http_request ;;
    relationship: one_to_one
  }

  join: cdnlog__source_location {
    view_label: "Cdnlog: Sourcelocation"
    sql: LEFT JOIN UNNEST([${cdnlog.source_location}]) as cdnlog__source_location ;;
    relationship: one_to_one
  }

  join: cdnlog__operation {
    view_label: "Cdnlog: Operation"
    sql: LEFT JOIN UNNEST([${cdnlog.operation}]) as cdnlog__operation ;;
    relationship: one_to_one
  }
}
