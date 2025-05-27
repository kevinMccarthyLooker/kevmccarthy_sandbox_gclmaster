connection: "bigquery"

view: test_view {
  derived_table: {sql:select 1 as id;;}
  dimension: id {}
}
explore: test_view {}
