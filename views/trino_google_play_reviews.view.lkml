# The name of this view in Looker is "Trino Google Play Reviews"
view: trino_google_play_reviews {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: trino_case5.trino_google_play_reviews ;;
  suggestions: no

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Author" in Explore.

  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
  }

  dimension: developer_reply {
    type: string
    sql: ${TABLE}."developer reply" ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: reply_date {
    type: string
    sql: ${TABLE}."reply date" ;;
  }

  dimension: response_time {
    type: string
    sql: ${TABLE}."response time" ;;
  }

  dimension: review {
    type: string
    sql: ${TABLE}.review ;;
  }

  dimension: review_language {
    type: string
    sql: ${TABLE}."review language" ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}.sentiment ;;
  }

  dimension: submission_date {
    type: string
    sql: ${TABLE}."submission date" ;;
  }

  measure: count {
    type: count
  }
}
