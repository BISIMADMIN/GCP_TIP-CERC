view: dim_estructura_atencion {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.DIM_ESTRUCTURA_ATENCION` ;;

  dimension: ajustador {
    type: string
    sql: ${TABLE}.AJUSTADOR ;;
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
  dimension: gerente {
    type: string
    sql: ${TABLE}.GERENTE ;;
  }
  dimension: oficina_atencion {
    type: string
    sql: ${TABLE}.OFICINA_ATENCION ;;
  }
  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }
  dimension: sk_ajustador {
    type: string
    sql: ${TABLE}.SK_AJUSTADOR ;;
  }
  dimension: sk_oficina_atencion {
    type: string
    sql: ${TABLE}.SK_OFICINA_ATENCION ;;
  }
  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
  }
  dimension: subdirector {
    type: string
    sql: ${TABLE}.SUBDIRECTOR ;;
  }
  measure: count {
    type: count
  }
}
