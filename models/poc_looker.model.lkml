# Define the database connection to be used for this model.
connection: "poc_looker"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: poc_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_looker_default_datagroup

#explore: connection_reg_r3 {
#  join:  {
#    relationship: many_to_one
#    sql_on: ${connection_reg_r3.created_at} = ${connection_reg_r3.created_at} ;;
#    type: inner
#
#  }
#}

explore: connection_reg_r3 { }
