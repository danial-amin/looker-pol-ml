view: trainingdata {
  sql_table_name: `pol.Training-Data`
    ;;

  dimension: book_value_of_equity_over_total_liabilities {
    type: number
    sql: ${TABLE}.book_value_of_equity_over_total_liabilities ;;
  }

  dimension: Cash_Operating_Cycle{
    type: number
    sql: ${TABLE}.cash_plus_short_term_securities_plus_receivables_minus_short_term_liabilities_over_operating_expenses_minus_depreciation_times_365 ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: constant_capital_over_fixed_assets {
    type: number
    sql: ${TABLE}.constant_capital_over_fixed_assets ;;
  }

  measure: count_all {
    type: number
    sql:  SELECT COUNT(*) FROM ${TABLE};;
  }
  dimension: constant_capital_over_total_assets {
    type: number
    sql: ${TABLE}.constant_capital_over_total_assets ;;
  }

  dimension: current_assets_minus_inventories_over_long_term_liabilities {
    type: number
    sql: ${TABLE}.current_assets_minus_inventories_over_long_term_liabilities ;;
  }

  dimension: current_assets_minus_inventory_minus_receivables_over_short_term_liabilities {
    type: number
    sql: ${TABLE}.current_assets_minus_inventory_minus_receivables_over_short_term_liabilities ;;
  }

  dimension: current_assets_minus_inventory_minus_short_term_liabilities_over_sales_minus_gross_profit_minus_depreciation {
    type: number
    sql: ${TABLE}.current_assets_minus_inventory_minus_short_term_liabilities_over_sales_minus_gross_profit_minus_depreciation ;;
  }

  dimension: Quick_Ratio {
    type: number
    sql: ${TABLE}.current_assets_minus_inventory_over_short_term_liabilities ;;
  }

  dimension: current_assets_over_short_term_liabilities {
    type: number
    sql: ${TABLE}.current_assets_over_short_term_liabilities ;;
  }

  dimension: current_assets_over_total_liabilities {
    type: number
    sql: ${TABLE}.current_assets_over_total_liabilities ;;
  }

  dimension: current_liabilities_times_365_over_cost_of_products_sold {
    type: number
    sql: ${TABLE}.current_liabilities_times_365_over_cost_of_products_sold ;;
  }

  dimension: ebit_over_total_assets {
    type: number
    sql: ${TABLE}.EBIT_over_total_assets ;;
  }

  dimension: ebitda_profit_on_operating_activities_minus_depreciation_over_sales {
    type: number
    sql: ${TABLE}.EBITDA_profit_on_operating_activities_minus_depreciation_over_sales ;;
  }

  dimension: ebitda_profit_on_operating_activities_minus_depreciation_over_total_assets {
    type: number
    sql: ${TABLE}.EBITDA_profit_on_operating_activities_minus_depreciation_over_total_assets ;;
  }

  dimension: equity_minus_share_capital_over_total_assets {
    type: number
    sql: ${TABLE}.equity_minus_share_capital_over_total_assets ;;
  }

  dimension: equity_over_fixed_assets {
    type: number
    sql: ${TABLE}.equity_over_fixed_assets ;;
  }

  dimension: equity_over_total_assets {
    type: number
    sql: ${TABLE}.equity_over_total_assets ;;
  }

  dimension: forecasting_period {
    type: number
    sql: ${TABLE}.forecasting_period ;;
  }

  dimension: gross_profit_in_3_years_over_total_assets {
    type: number
    sql: ${TABLE}.gross_profit_in_3_years_over_total_assets ;;
  }

  dimension: gross_profit_over_sales {
    type: number
    sql: ${TABLE}.gross_profit_over_sales ;;
  }

  dimension: gross_profit_over_short_term_liabilities {
    type: number
    sql: ${TABLE}.gross_profit_over_short_term_liabilities ;;
  }

  dimension: gross_profit_over_total_assets {
    type: number
    sql: ${TABLE}.gross_profit_over_total_assets ;;
  }

  dimension: gross_profit_plus_depreciation_over_sales {
    type: number
    sql: ${TABLE}.gross_profit_plus_depreciation_over_sales ;;
  }

  dimension: gross_profit_plus_depreciation_over_total_liabilities {
    type: number
    sql: ${TABLE}.gross_profit_plus_depreciation_over_total_liabilities ;;
  }

  dimension: gross_profit_plus_extraordinary_items_plus_financial_expenses_over_total_assets {
    type: number
    sql: ${TABLE}.gross_profit_plus_extraordinary_items_plus_financial_expenses_over_total_assets ;;
  }

  dimension: gross_profit_plus_interest_over_sales {
    type: number
    sql: ${TABLE}.gross_profit_plus_interest_over_sales ;;
  }

  dimension: gross_profit_plus_interest_over_total_assets {
    type: number
    sql: ${TABLE}.gross_profit_plus_interest_over_total_assets ;;
  }

  dimension: inventory_times_365_over_cost_of_products_sold {
    type: number
    sql: ${TABLE}.inventory_times_365_over_cost_of_products_sold ;;
  }

  dimension: inventory_times_365_over_sales {
    type: number
    sql: ${TABLE}.inventory_times_365_over_sales ;;
  }

  dimension: logarithm_of_total_assets {
    type: number
    sql: ${TABLE}.logarithm_of_total_assets ;;
  }

  dimension: long_term_liabilities_over_equity {
    type: number
    sql: ${TABLE}.long_term_liabilities_over_equity ;;
  }

  dimension: net_profit_over_inventory {
    type: number
    sql: ${TABLE}.net_profit_over_inventory ;;
  }

  dimension: net_profit_over_sales {
    type: number
    sql: ${TABLE}.net_profit_over_sales ;;
  }

  dimension: Return_On_Assets {
    type: number
    sql: ${TABLE}.net_profit_over_total_assets ;;
  }

  dimension: net_profit_plus_depreciation_over_total_liabilities {
    type: number
    sql: ${TABLE}.net_profit_plus_depreciation_over_total_liabilities ;;
  }

  dimension: operating_expenses_over_short_term_liabilities {
    type: number
    sql: ${TABLE}.operating_expenses_over_short_term_liabilities ;;
  }

  dimension: operating_expenses_over_total_liabilities {
    type: number
    sql: ${TABLE}.operating_expenses_over_total_liabilities ;;
  }

  dimension: profit_on_operating_activities_over_financial_expenses {
    type: number
    sql: ${TABLE}.profit_on_operating_activities_over_financial_expenses ;;
  }

  dimension: profit_on_operating_activities_over_sales {
    type: number
    sql: ${TABLE}.profit_on_operating_activities_over_sales ;;
  }

  dimension: profit_on_operating_activities_over_total_assets {
    type: number
    sql: ${TABLE}.profit_on_operating_activities_over_total_assets ;;
  }

  dimension: profit_on_sales_over_sales {
    type: number
    sql: ${TABLE}.profit_on_sales_over_sales ;;
  }

  dimension: profit_on_sales_over_total_assets {
    type: number
    sql: ${TABLE}.profit_on_sales_over_total_assets ;;
  }

  dimension: receivables_times_365_over_sales {
    type: number
    sql: ${TABLE}.receivables_times_365_over_sales ;;
  }

  dimension: retained_earnings_over_total_assets {
    type: number
    sql: ${TABLE}.retained_earnings_over_total_assets ;;
  }

  dimension: rotation_receivables_plus_inventory_turnover_in_days {
    type: number
    sql: ${TABLE}.rotation_receivables_plus_inventory_turnover_in_days ;;
  }

  dimension: sales_minus_cost_of_products_sold_over_sales {
    type: number
    sql: ${TABLE}.sales_minus_cost_of_products_sold_over_sales ;;
  }

  dimension: sales_n_over_sales_n_minus_1 {
    type: number
    sql: ${TABLE}.sales_n_over_sales_n_minus_1 ;;
  }

  dimension: sales_over_fixed_assets {
    type: number
    sql: ${TABLE}.sales_over_fixed_assets ;;
  }

  dimension: sales_over_inventory {
    type: number
    sql: ${TABLE}.sales_over_inventory ;;
  }

  dimension: sales_over_receivables {
    type: number
    sql: ${TABLE}.sales_over_receivables ;;
  }

  dimension: sales_over_short_term_liabilities {
    type: number
    sql: ${TABLE}.sales_over_short_term_liabilities ;;
  }

  dimension: sales_over_total_assets {
    type: number
    sql: ${TABLE}.sales_over_total_assets ;;
  }

  dimension: short_term_liabilities_over_total_assets {
    type: number
    sql: ${TABLE}.short_term_liabilities_over_total_assets ;;
  }

  dimension: short_term_liabilities_times_365_over_cost_of_products_sold {
    type: number
    sql: ${TABLE}.short_term_liabilities_times_365_over_cost_of_products_sold ;;
  }

  dimension: short_term_liabilities_times_365_over_sales {
    type: number
    sql: ${TABLE}.short_term_liabilities_times_365_over_sales ;;
  }

  dimension: total_assets_over_total_liabilities {
    type: number
    sql: ${TABLE}.total_assets_over_total_liabilities ;;
  }

  dimension: total_costs_overtotal_sales {
    type: number
    sql: ${TABLE}.total_costs_overtotal_sales ;;
  }

  dimension: total_liabilities_minus_cash_over_sales {
    type: number
    sql: ${TABLE}.total_liabilities_minus_cash_over_sales ;;
  }

  dimension: total_liabilities_over_profit_on_operating_activities_plus_depreciation_times_12_over_365 {
    type: number
    sql: ${TABLE}.total_liabilities_over_profit_on_operating_activities_plus_depreciation_times_12_over_365 ;;
  }

  dimension: Debt_Ratio {
    type: number
    sql: ${TABLE}.total_liabilities_over_total_assets ;;
  }

  dimension: total_liabilities_times_365_over_gross_profit_plus_depreciation {
    type: number
    sql: ${TABLE}.total_liabilities_times_365_over_gross_profit_plus_depreciation ;;
  }

  dimension: total_sales_over_total_assets {
    type: number
    sql: ${TABLE}.total_sales_over_total_assets ;;
  }

  dimension: working_capital {
    type: number
    sql: ${TABLE}.working_capital ;;
  }

  dimension: working_capital_over_fixed_assets {
    type: number
    sql: ${TABLE}.working_capital_over_fixed_assets ;;
  }

  dimension: working_capital_over_total_assets {
    type: number
    sql: ${TABLE}.working_capital_over_total_assets ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
