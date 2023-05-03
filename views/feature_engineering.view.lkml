view: feature_engineering {
  derived_table: {
    sql: SELECT * FROM `polish-bankruptcy.pol.Feature_importance` ORDER BY `importance_weight` DESC LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: importance_weight {
    type: number
    sql: ${TABLE}.importance_weight ;;
  }

  dimension: importance_gain {
    type: number
    sql: ${TABLE}.importance_gain ;;
  }

  dimension: importance_cover {
    type: number
    sql: ${TABLE}.importance_cover ;;
  }

  set: detail {
    fields: [feature, importance_weight, importance_gain, importance_cover]
  }
}
