view: dim_estructura_comercial {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.DIM_ESTRUCTURA_COMERCIAL` ;;

  dimension: agente {
    type: string
    sql: ${TABLE}.AGENTE ;;
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
  dimension: oficina_emision {
    type: string
    sql: ${TABLE}.OFICINA_EMISION ;;
  }
  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }
  dimension: sk_agente {
    type: string
    sql: ${TABLE}.SK_AGENTE ;;
  }
  dimension: sk_oficina_emision {
    type: string
    sql: ${TABLE}.SK_OFICINA_EMISION ;;
  }
  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
  }
  dimension: subdireccion {
    type: string
    sql: ${TABLE}.SUBDIRECCION ;;
  }
  measure: count {
    type: count
  }
}
