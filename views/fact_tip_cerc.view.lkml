view: fact_tip_cerc {
  sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.FACT_TIP_CERC` ;;

  dimension: flg_taa_0030 {
    type: number
    sql: ${TABLE}.FLG_TAA_0030 ;;
  }

  dimension: flg_taa_3045 {
    type: number
    sql: ${TABLE}.FLG_TAA_3045 ;;
  }

  dimension: flg_taa_4560 {
    type: number
    sql: ${TABLE}.FLG_TAA_4560 ;;
  }

  dimension: flg_taa_6099 {
    type: number
    sql: ${TABLE}.FLG_TAA_6099 ;;
  }

  dimension: ti_atn_presencial {
    type: number
    sql: ${TABLE}.TI_ATN_PRESENCIAL ;;
  }

  dimension: cumplimiento_integral {
    type: number
    sql: ${TABLE}.CUMPLIMIENTO_INTEGRAL ;;
  }

  dimension: tiempo_integral {
    type: number
    sql: ${TABLE}.TIEMPO_INTEGRAL ;;
  }

  dimension: conteo_reporte {
    type: number
    sql: ${TABLE}.CONTEO_REPORTE ;;
  }

  dimension: sk_fecha_reporte {
    type: string
    sql: ${TABLE}.SK_FECHA_REPORTE ;;
  }

  dimension: sk_fecha_ocurrido {
    type: string
    sql: ${TABLE}.SK_FECHA_OCURRIDO ;;
  }

  dimension: sk_fecha_asignacion {
    type: string
    sql: ${TABLE}.SK_FECHA_ASIGNACION ;;
  }

  dimension: sk_fecha_arribo {
    type: string
    sql: ${TABLE}.SK_FECHA_ARRIBO ;;
  }

  dimension: sk_fecha_termino {
    type: string
    sql: ${TABLE}.SK_FECHA_TERMINO ;;
  }

  dimension: reporte {
    type: string
    sql: ${TABLE}.REPORTE ;;
  }

  dimension: sk_reporte {
    type: string
    sql: ${TABLE}.SK_REPORTE ;;
  }

  dimension: ajustador {
    type: string
    sql: ${TABLE}.AJUSTADOR ;;
  }

  dimension: sk_ajustador {
    type: string
    sql: ${TABLE}.SK_AJUSTADOR ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }

  dimension: tiempo_asignacion {
    type: number
    sql: ${TABLE}.TIEMPO_ASIGNACION ;;
  }

  dimension: asignacion_cercania {
    type: number
    sql: ${TABLE}.ASIGNACION_CERCANIA ;;
  }

  dimension: flg_geo_asig {
    type: number
    sql: ${TABLE}.FLG_GEO_ASIG ;;
  }

  dimension: flg_radio {
    type: number
    sql: ${TABLE}.FLG_RADIO ;;
  }

  dimension: sk_oficina_emision {
    type: string
    sql: ${TABLE}.SK_OFICINA_EMISION ;;
  }

  dimension: oficina_emision {
    type: string
    sql: ${TABLE}.OFICINA_EMISION ;;
  }

  # Puedes agregar aquí las métricas (measures) que necesites, por ejemplo:
  measure: count {
    type: count
  }
}
