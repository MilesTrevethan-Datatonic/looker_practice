view: yearly_lighning_2020 {
  sql_table_name: `datatonic-analytics-sandbox.geog_data.yearly_lighning_2020`
    ;;

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
