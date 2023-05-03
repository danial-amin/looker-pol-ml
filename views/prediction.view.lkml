view: prediction {
  parameter: ROA {type: number}
  parameter: quick_ratio{type: number}
  parameter: cash_operating_cycle {type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `polish-bankruptcy.pol.rfmodel`,
    (SELECT {% parameter ROA %} AS ReturnOnAsset,
        {% parameter quick_ratio %} AS QuickRatio,
        {% parameter cash_operating_cycle %} AS CashOperatingCycle));;
}

  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_class_probs ;;
  }
}
