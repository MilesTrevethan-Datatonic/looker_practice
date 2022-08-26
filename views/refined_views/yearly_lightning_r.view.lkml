include: "/views/auto_views/yearly_lightning_2020.view"
view: +yearly_lighning_2020 {
  dimension: location {
    type: location
    sql_latitude:${y} ;;
    sql_longitude:${x} ;;

  }
  measure: average_strikes {
    sql: ${num_strikes} ;;
    type: average

    }
}
