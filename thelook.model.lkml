connection: "thelook"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: remote_inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: remote_order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  query: turtle_i_hope_order_status_count_query {
    dimensions: [orders.created_raw]
    measures: [orders.count]
    sort: {field:count  desc:yes}
    limit:  5
  }

  query: order_status_count_query {
    dimensions: [orders.created_date]
    measures: [orders.count]
    sort: {field:count  desc:yes}
    limit:  5
  }

}

explore: remote_orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
