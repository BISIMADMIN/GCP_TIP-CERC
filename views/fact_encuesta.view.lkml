view: fact_encuesta {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.FACT_ENCUESTA` ;;

  dimension: bit_detractor {
    type: number
    sql: ${TABLE}.BIT_DETRACTOR ;;
  }
  dimension: bit_promotor {
    type: number
    sql: ${TABLE}.BIT_PROMOTOR ;;
  }
  dimension: contador {
    type: number
    sql: ${TABLE}.CONTADOR ;;
  }
  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
  dimension_group: fch_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_MODIFICACION ;;
  }
  dimension: sk_encuesta {
    type: string
    sql: ${TABLE}.SK_ENCUESTA ;;
  }
  dimension: sk_fecha_envio {
    type: string
    sql: ${TABLE}.SK_FECHA_ENVIO ;;
  }
  dimension: sk_fecha_ocurrido {
    type: string
    sql: ${TABLE}.SK_FECHA_OCURRIDO ;;
  }
  dimension: sk_fecha_reporte {
    type: string
    sql: ${TABLE}.SK_FECHA_REPORTE ;;
  }
  dimension: sk_fecha_respuesta {
    type: string
    sql: ${TABLE}.SK_FECHA_RESPUESTA ;;
  }
  dimension: sk_oficina_atencion {
    type: string
    sql: ${TABLE}.SK_OFICINA_ATENCION ;;
  }
  dimension: sk_oficina_emision {
    type: string
    sql: ${TABLE}.SK_OFICINA_EMISION ;;
  }
  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
  }
  measure: count {
    type: count
  }
}
