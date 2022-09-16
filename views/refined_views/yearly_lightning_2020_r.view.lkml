include: "/views/auto_views/yearly_lightning_2020.view"
view: +yearly_lightning_2020 {
  dimension: x_grouped {
    type: number
    sql:round(2*${x})/2  ;;
  }
  dimension: y_grouped {
    type: number
    sql:round(2*${y})/2  ;;
  }
  dimension: location_grouped {
    type: location
    sql_latitude: ${y_grouped};;
    sql_longitude: ${x_grouped} ;;
  }

  measure: average_strikes {
    sql: ${num_strikes} ;;
    type: average
    }

  measure: total_strikes {
    sql: ${num_strikes} ;;
    type: sum
  }
}
