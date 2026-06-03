connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"
# Define the database connection to be used for this model.
#connection: "bigquery-operaciones"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Modelo_Encuestas_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Modelo_Encuestas_default_datagroup

explore: fact_encuesta {
  label: "Explorar Modelo Encuesta"
  description: "Información sobre encuesta"

  join: dim_encuesta {
    sql_on: ${fact_encuesta.sk_encuesta} = ${dim_encuesta.sk_tid} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: dim_reporte {
    sql_on: ${fact_encuesta.sk_reporte} = ${dim_reporte.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_comercial {
    sql_on: ${fact_encuesta.sk_reporte} = ${dim_estructura_comercial.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_estructura_atencion {
    sql_on: ${fact_encuesta.sk_reporte} = ${dim_estructura_atencion.sk_reporte} ;;
    relationship: one_to_one
    type: left_outer
  }
  join: dim_tiempo {
    sql_on: ${fact_encuesta.sk_fecha_respuesta} = ${dim_tiempo.sk_fecha} ;;
    relationship: one_to_one
    type: left_outer
  }
}
