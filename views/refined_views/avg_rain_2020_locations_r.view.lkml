include: "/views/auto_views/avg_rain_2020_locations.view"
view: +avg_rain_2020_locations {
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
  measure: average_rain {
    sql: ${avg_prcp} ;;
    type: average
  }
  measure: average_elevation {
    type: average
    sql: ${elevation} ;;
  }
}
