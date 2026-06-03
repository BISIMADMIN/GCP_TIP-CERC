view: dim_tiempo {
  sql_table_name: `qlts-dev-mx-au-oro-operaciones.robos.DIM_TIEMPO` ;;

  dimension: desc_dia {
    type: string
    sql: ${TABLE}.DESC_DIA ;;
  }
  dimension: desc_mes {
    type: string
    sql: ${TABLE}.DESC_MES ;;
  }
  dimension: desc_mes_largo {
    type: string
    sql: ${TABLE}.DESC_MES_LARGO ;;
  }
  dimension: desc_semestre {
    type: string
    sql: ${TABLE}.DESC_SEMESTRE ;;
  }
  dimension: desc_trimestre {
    type: string
    sql: ${TABLE}.DESC_TRIMESTRE ;;
  }
  dimension_group: fch_fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_FECHA ;;
  }
  dimension: num_anio {
    type: number
    sql: ${TABLE}.NUM_ANIO ;;
  }
  dimension: num_dia {
    type: number
    sql: ${TABLE}.NUM_DIA ;;
  }
  dimension: num_mes {
    type: number
    sql: ${TABLE}.NUM_MES ;;
  }
  dimension: num_semestre {
    type: number
    sql: ${TABLE}.NUM_SEMESTRE ;;
  }
  dimension: num_trimestre {
    type: number
    sql: ${TABLE}.NUM_TRIMESTRE ;;
  }
  dimension: sk_fecha {
    type: string
    sql: ${TABLE}.SK_FECHA ;;
  }
  measure: count {
    type: count
  }
}
