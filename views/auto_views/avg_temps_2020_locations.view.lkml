view: avg_temps_2020_locations {
  sql_table_name: `datatonic-analytics-sandbox.geog_data.avg_temps_2020_locations`
    ;;

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
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
