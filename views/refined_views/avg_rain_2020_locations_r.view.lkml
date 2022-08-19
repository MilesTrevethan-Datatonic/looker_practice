include: "/views/auto_views/avg_rain_2020_locations.view"
view: +avg_rain_2020_locations {
  dimension: location {
    type: location
    sql_latitude:${lat} ;;
    sql_longitude:${lon} ;;
  }
}
