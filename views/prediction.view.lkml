view: prediction {
  parameter: ROA {type: number}
  parameter: quick_ratio{type: number}
  parameter: cash_operating_cycle {type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `polish-bankruptcy.pol.rfmodel`,
    (SELECT {% parameter ROA %} AS net_profit_over_total_assets,
        {% parameter quick_ratio %} AS forecasting_period,current_assets_minus_inventory_over_short_term_liabilities,
        {% parameter cash_operating_cycle %} AS cash_plus_short_term_securities_plus_receivables_minus_short_term_liabilities_over_operating_expenses_minus_depreciation_times_365));;
}

  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_class_probs ;;
  }
}
