connection: "bigquery"

view: test_view {
  derived_table: {sql:select 1 as id;;}
  dimension: id {} #testing CI tool with breaking content
  # dimension: id2 {sql:${TABLE}.id;;}#
}
explore: test_view {}

test: test_id_is_one {
  explore_source: test_view {
    column: id {}
  }
  assert: id_is_one {expression: ${test_view.id}="1";;}
}
