view: dim_reporte {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.DIM_REPORTE` ;;

  dimension: ae {
    type: number
    sql: ${TABLE}.AE ;;
  }
  dimension: causa {
    type: string
    sql: ${TABLE}.CAUSA ;;
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
  dimension: marca_capufe {
    type: number
    sql: ${TABLE}.marca_capufe ;;
  }
  dimension: poliza {
    type: string
    sql: ${TABLE}.POLIZA ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }
  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }
  dimension: siniestro {
    type: string
    sql: ${TABLE}.SINIESTRO ;;
  }
  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
  }
  measure: count {
    type: count
  }
}
