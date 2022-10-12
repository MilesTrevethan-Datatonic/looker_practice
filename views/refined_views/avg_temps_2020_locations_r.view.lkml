include: "/views/auto_views/avg_temps_2020_locations.view"
view: +avg_temps_2020_locations {
  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp/100 ;;
  }
  dimension: x_grouped {
    type: number
    sql:round(2*${lon})/2  ;;
  }
  dimension: y_grouped {
    type: number
    sql:round(2*${lat})/2  ;;
  }
  dimension: location_grouped {
    type: location
    sql_latitude: ${y_grouped};;
    sql_longitude: ${x_grouped} ;;
  }
  measure: average_temp {
    sql: ${avg_temp} ;;
    type: average
  }
  measure: average_elevation {
    type: average
    sql: ${elevation} ;;
  }
}
