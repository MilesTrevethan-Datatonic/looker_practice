view: avg_temps_2020 {
  sql_table_name: `datatonic-analytics-sandbox.geog_data.avg_temps_2020`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
