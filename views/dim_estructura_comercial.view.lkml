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
    hidden: yes
  }
  dimension_group: fch_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FCH_MODIFICACION ;;
    hidden: yes
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
    hidden: yes
  }
  dimension: sk_oficina_emision {
    type: string
    sql: ${TABLE}.SK_OFICINA_EMISION ;;
    hidden: yes
  }
  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
    hidden: yes
  }
  dimension: subdireccion {
    type: string
    sql: ${TABLE}.SUBDIRECCION ;;
  }
  measure: count {
    type: count
  }
}
