view: stg_gigya_books {
  sql_table_name: dbo.STG_GIGYA_BOOKS ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: dataset_instance_id {
    type: number
    sql: ${TABLE}.DATASET_INSTANCE_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.UID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
