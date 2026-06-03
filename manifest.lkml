project_name: "Modelo_Encuestas"

# Constantes para conexion, tablas, views y LookML dashboards
constant: conexion {
  value: "bigquery-operaciones"
}

constant: ruta_encuestas {
  value: "`qlts-dev-mx-au-oro-ti.peoo.fact_encuesta`"
}

constant: ruta_views {
  value: "/views/**/*.view.lkml"
}

constant: ruta_lookml_dashboards {
  value: "/lookml_dashboards/**/*.dashboard.lookml"
}
