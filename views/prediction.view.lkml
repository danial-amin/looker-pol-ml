view: prediction {
  parameter: net_profit_over_total_assets {type: number}
  parameter: current_assets_minus_inventory_over_short_term_liabilities {type: number}
  parameter: cash_plus_short_term_securities_plus_receivables_minus_short_term_liabilities_over_operating_expenses_minus_depreciation_times_365 {type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `polish-bankruptcy.pol.rfmodel`,
    (SELECT net_profit_over_total_assets,forecasting_period,current_assets_minus_inventory_over_short_term_liabilities,
cash_plus_short_term_securities_plus_receivables_minus_short_term_liabilities_over_operating_expenses_minus_depreciation_times_365,
total_liabilities_over_total_assets FROM `polish-bankruptcy.pol.Training-Data`));;
}

  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_class_probs ;;
  }
}
