class Agenda{
  final tareas = [
    'Estudiar dart',
    'Programar mis HUs',
    'Hacer un prompt para que chat haga la exposicion',
    'Hacer pull request de las HU terminados',
    'Presentar examen TOEFL'
  ];

// estado de una tarea
String? eliminada; //nombre de latarea
int? posicionAnterior; //posicion de la tarea en el arreglo

void eliminar (int posicion){
  eliminada = tareas.removeAt(posicion);
  posicionAnterior = posicion;
}

// ya no se quiere borrar la tarea, se debe recuperar
  void deshacer(){
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if (tarea != null && posicion != null){
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}