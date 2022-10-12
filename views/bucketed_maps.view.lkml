# If necessary, uncomment the line below to include explore_source.

# include: "temp_vs_rain.model.lkml"

view: average_rain_bucketed {
  derived_table: {
    explore_source: avg_rain_2020_locations {
      column: x_grouped {}
      column: y_grouped {}
      column: average_rain {}
      column: average_elevation {}
      column: count {}
    }
  }
  dimension: x_grouped {
    type:  number
  }
  dimension: y_grouped {
    type:  number
  }
  dimension: location_grouped {
    type: location
    sql_longitude: ${x_grouped} ;;
    sql_latitude: ${y_grouped} ;;
  }

  dimension: average_rain {
    type: number
  }
  dimension: average_elevation {
    type:  number
  }
  dimension: count {
    type: number
  }
  dimension: rounded_rain {
    type:  number
    sql: round(${average_rain}) ;;
  }
  dimension: rounded_elevation {
    type:  number
    sql: round(5*${average_elevation},-2)/5 ;;
  }
  measure: num_locations {
    type:  count
  }
  measure: data_points {
    type:  sum
    sql: ${count} ;;
  }
  measure: averaged_rain {
    type:  average
    sql: ${average_rain} ;;
  }
  measure: averaged_elevation {
    type:  average
    sql: ${average_elevation} ;;
  }
}

view: average_temps_bucketed {
  derived_table: {
    explore_source: avg_temps_2020_locations {
      column: x_grouped {}
      column: y_grouped {}
      column: average_temp {}
      column: average_elevation {}
      column: count {}
    }
  }
  dimension: x_grouped {
    type:  number
  }
  dimension: y_grouped {
    type:  number
  }
  dimension: location_grouped {
    type: location
    sql_longitude: ${x_grouped} ;;
    sql_latitude: ${y_grouped} ;;
  }
  dimension: average_temp {
    type: number
  }
  dimension: average_elevation {
    type:  number
  }
  dimension: count {
    type: number
  }
  dimension: rounded_temp {
    type:  number
    sql: round(${average_temp},0) ;;
  }

  dimension: rounded_elevation {
    type:  number
    sql: round(5*${average_elevation},-2)/5 ;;
  }
  measure: num_locations {
    type:  count
  }
  measure: data_points {
    type:  sum
    sql: ${count} ;;
  }
  measure: averaged_temp {
    type:  average
    sql: ${average_temp} ;;
  }
  measure: averaged_elevation {
    type:  average
    sql: ${average_elevation} ;;
  }
}

view: average_lightning_bucketed {
  derived_table: {
    explore_source: yearly_lightning_2020 {
      column: x_grouped {}
      column: y_grouped {}
      column: average_strikes {}
      column: count {}
    }
  }
  dimension: x_grouped {
    type:  number
  }
  dimension: y_grouped {
    type:  number
  }
  dimension: location_grouped {
    type: location
    sql_longitude: ${x_grouped} ;;
    sql_latitude: ${y_grouped} ;;
  }
  dimension: average_strikes {
    type: number
  }
  dimension: count {
    type: number
  }
  dimension: rounded_strikes {
    type:  number
    sql: round(${average_strikes}) ;;
  }
  measure: num_locations {
    type:  count
  }
  measure: data_points {
    type:  sum
    sql: ${count} ;;
  }
  measure: averaged_strikes {
    type:  average
    sql: ${average_strikes} ;;
  }
}
