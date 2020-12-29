- dashboard: ex_140_look_ml
  title: Merge Query - EX-140
  layout: newspaper
  elements:
  - name: frankenstein
    title: frankenstein
    merged_queries:
    - model: thelook
      explore: order_items
      type: table
      fields: [users.id, users.country, users.count, users.gender]
      sorts: [users.count desc]
      limit: 500
      query_timezone: America/Los_Angeles
    - model: thelook
      explore: orders
      type: table
      fields: [users.id, users.last_name]
      sorts: [users.id]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: users.id
        source_field_name: users.id
    type: table
    pivots: [q1_users.gender]
    row: 0
    col: 8
    width: 8
    height: 6
