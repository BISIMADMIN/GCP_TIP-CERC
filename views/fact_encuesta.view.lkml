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
    hidden: yes
  }
  dimension_group: fch_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_MODIFICACION ;;
    hidden: yes
  }
  dimension: sk_encuesta {
    type: string
    sql: ${TABLE}.SK_ENCUESTA ;;
    hidden: yes
  }
  dimension: sk_fecha_envio {
    type: number
    sql: ${TABLE}.SK_FECHA_ENVIO ;;
    hidden: yes
  }
  dimension: sk_fch_ocurrido {
    type: number
    sql: ${TABLE}.SK_FCH_OCURRIDO ;;
    hidden: yes
  }
  dimension: sk_fecha_ocurrido {
    type: number
    sql: ${TABLE}.SK_FECHA_OCURRIDO ;;
    hidden: yes
  }
  dimension: sk_fecha_reporte {
    type: number
    sql: ${TABLE}.SK_FECHA_REPORTE ;;
    hidden: yes
  }
  dimension: sk_fecha_respuesta {
    type: number
    sql: ${TABLE}.SK_FECHA_RESPUESTA ;;
    hidden: yes
  }
  dimension: sk_oficina_atencion {
    type: string
    sql: ${TABLE}.SK_OFICINA_ATENCION ;;
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
  measure: count {
    type: count
  }
}
