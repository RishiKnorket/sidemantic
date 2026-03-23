view: order_items {
  sql_table_name: demo.order_items ;;
  
  dimension: order_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }
  
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  
  dimension: order_date {
    type: time
    sql: ${TABLE}.created_at ;;
  }
  
  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  
  measure: total_revenue {
    type: sum
    sql: ${TABLE}.amount ;;
    value_format_name: usd
  }
  
  measure: order_count {
    type: count
    sql: ${TABLE}.order_id ;;
  }
  
  measure: avg_order_value {
    type: average
    sql: ${TABLE}.amount ;;
    value_format_name: usd
  }
}

explore: orders {
  view_name: order_items
  join: customers {
    relationship: many_to_one
    sql_on: ${order_items.customer_id} = ${customers.customer_id} ;;
  }
}
