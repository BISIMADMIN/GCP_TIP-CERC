- dashboard: encuesta
  title: Encuestas
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1780375585
    title: Untitled Visualization
    model: Modelo_Encuestas
    explore: fact_encuesta
    type: looker_column
    fields: [conteo_encuestas, dim_encuesta.tipo_encuesta]
    sorts: [conteo_encuestas desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Conteo encuestas
      based_on: fact_encuesta.contador
      _kind_hint: measure
      measure: conteo_encuestas
      type: sum
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
