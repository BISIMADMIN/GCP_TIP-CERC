project_name: "Modelo_TIP_CERC"

# Constantes para conexion, tablas, views y LookML dashboards
constant: conexion {
  value: "bigquery-operaciones"
}

constant: ruta_TIP_CERC {
  value: "`qlts-dev-mx-au-oro-ti.peoo.fact_tip_cerc`"
}

constant: ruta_views {
  value: "/views/**/*.view.lkml"
}

constant: ruta_lookml_dashboards {
  value: "/lookml_dashboards/**/*.dashboard.lookml"
}
