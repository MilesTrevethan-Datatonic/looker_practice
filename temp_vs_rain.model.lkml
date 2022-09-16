connection: "analytics_sandbox"


include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: avg_rain_2020_locations {}
explore: avg_temps_2020_locations {}
explore: yearly_lightning_2020 {}

explore: weather_joined{
  view_name: average_rain_bucketed
  join: average_temps_bucketed {
    type: full_outer
    relationship: one_to_one
    sql_on: ${average_rain_bucketed.location_grouped::latitude}=${average_temps_bucketed.location_grouped::latitude} and
    ${average_rain_bucketed.location_grouped::longitude}=${average_temps_bucketed.location_grouped::longitude} ;;
  }
  join: average_lightning_bucketed {
    type: full_outer
    relationship: one_to_one
    sql_on: ${average_rain_bucketed.location_grouped::latitude}=${average_lightning_bucketed.location_grouped::latitude} and
    ${average_rain_bucketed.location_grouped::longitude}=${average_lightning_bucketed.location_grouped::longitude} ;;
  }
}
