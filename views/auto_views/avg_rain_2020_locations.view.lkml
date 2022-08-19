view: avg_rain_2020_locations {
  sql_table_name: `datatonic-analytics-sandbox.geog_data.avg_rain_2020_locations`
    ;;

  dimension: avg_prcp {
    type: number
    sql: ${TABLE}.avg_prcp ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
