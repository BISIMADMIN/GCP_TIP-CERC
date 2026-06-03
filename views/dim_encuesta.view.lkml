view: dim_encuesta {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.DIM_ENCUESTA` ;;

  dimension: clave_encuesta {
    type: string
    sql: ${TABLE}.CLAVE_ENCUESTA ;;
  }
  dimension: desc_encuesta {
    type: string
    sql: ${TABLE}.DESC_ENCUESTA ;;
  }
  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
  }
  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
  dimension_group: fch_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FCH_MODIFICACION ;;
  }
  dimension: sk_tid {
    type: string
    sql: ${TABLE}.SK_TID ;;
  }
  dimension: tipo_encuesta {
    type: string
    sql: ${TABLE}.TIPO_ENCUESTA ;;
  }
  measure: count {
    type: count
  }
}
