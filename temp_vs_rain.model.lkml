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
explore: lightning_with_temps_rain_2020_2 {}
explore: avg_rain_2020_locations {
     join: avg_temps_2020_locations {
     relationship: one_to_one
     sql_on: ${avg_rain_2020_locations.lat} = ${avg_temps_2020_locations.lat} AND ${avg_rain_2020_locations.lon} = ${avg_temps_2020_locations.lon};;
   }
}
explore: avg_temps_2020_locations {}
explore: yearly_lighning_2020 {}
