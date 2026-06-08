connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
# Define the database connection to be used for this model.
#connection: "bigquery-operaciones"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Modelo_TIP_CERC_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Modelo_TIP_CERC_default_datagroup

explore: fact_tip_cerc {
  label: "Explorar Modelo Tiempo Integral Presencial + Cercania"
  description: "Información sobre Tiempo Integral Presencial + Cercania"

  join: dim_cercania {
    sql_on: ${fact_tip_cerc.sk_reporte} = ${dim_cercania.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_reporte {
    sql_on: ${fact_tip_cerc.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_comercial {
    sql_on: ${fact_tip_cerc.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_atencion {
    sql_on: ${fact_tip_cerc.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_fecha_reporte {
    from: dim_tiempo
    sql_on: ${fact_tip_cerc.sk_fecha_reporte} = ${dim_fecha_reporte.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_fecha_ocurrido {
    from: dim_tiempo
    sql_on: ${fact_tip_cerc.sk_fecha_ocurrido} = ${dim_fecha_ocurrido.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
}
