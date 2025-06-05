connection: "snowflake_test"


view: orders {
  derived_table: {
    sql: SELECT * FROM "LOOKER_TEST"."ORDERS" LIMIT 10 ;;
  }

  measure: count {
    type: count
  }

  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}."ORDER_AMOUNT" ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}."CREATED_AT" ;;
  }
  measure: avg_order_amount {
    type: average
    sql: ${order_amount} ;;
  }

}


explore: orders {
  access_filter: {
    field:orders.user_id
    user_attribute: fff
  }
}
