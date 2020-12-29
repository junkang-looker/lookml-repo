view: acquisitions {
  dimension: acquired_by {
    type: string
    sql: ${TABLE}.acquired_by_permalink ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price_amount ;;
  }
}