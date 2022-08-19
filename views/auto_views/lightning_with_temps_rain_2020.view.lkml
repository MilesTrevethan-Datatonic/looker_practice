view: lightning_with_temps_rain_2020 {
  sql_table_name: `datatonic-analytics-sandbox.geog_data.lightning_with_temps_rain_2020`
    ;;

  dimension: avg_prcp {
    type: number
    sql: ${TABLE}.avg_prcp ;;
  }

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation ;;
  }

  dimension: num_strikes {
    type: number
    sql: ${TABLE}.num_strikes ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
