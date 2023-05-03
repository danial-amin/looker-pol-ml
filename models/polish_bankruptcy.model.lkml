connection: "polish_bankruptcy"

# include all the views
include: "/views/**/*.view"

datagroup: polish_bankruptcy_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: polish_bankruptcy_default_datagroup

explore: trainingdata {}
explore: feature_engineering {}
