include: "/views/auto_views/climate_datapoints.view"
view: +climate_datapoints {
  dimension: lon_grouped {
    type: number
    sql:round(${longitude}/1.5) * 1.5 ;;
  }
  dimension: lat_grouped {
    type: number
    sql:round(${latitude}/1.5) * 1.5;;
  }
  dimension: location_grouped {
    type: location
    sql_latitude: ${lat_grouped};;
    sql_longitude: ${lon_grouped} ;;
    drill_fields: [station_name,latitude,longitude]
  }
  measure: average_rain {
    sql: ${value} ;;
    filters: [element: "PRCP"]
    type: average
  }
  measure: average_temp {
    sql: ${value}/10 ;;
    filters: [element: "TAVG"]
    type: average
  }
  measure: average_elevation {
    type: average
    sql: ${elevation} ;;
  }
}
