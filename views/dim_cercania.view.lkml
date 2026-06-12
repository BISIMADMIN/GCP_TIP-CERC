  view: dim_cercania {
    sql_table_name: `qlts-dev-mx-au-oro-ti.peoo.DIM_CERCANIA` ;;

    dimension: reporte {
      type: string
      sql: ${TABLE}.REPORTE ;;
    }

    dimension: sk_reporte {
      type: string
      sql: ${TABLE}.SK_REPORTE ;;
      hidden: yes
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

    dimension: flg_motor {
      type: number
      sql: ${TABLE}.FLG_MOTOR ;;
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
  }
