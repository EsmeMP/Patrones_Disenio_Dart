import 'controlador-comandos.dart';
import 'eliminar-tarea.dart';


  // Conveniente cuando se requiere manipular un historial de comandos
void main() {
  final tareas = [
    'Estudiar dart',
    'Programar mis HUs',
    'Hacer un prompt para que chat haga la exposición',
    'Hacer pull request de las HU terminadas',
    'Presentar examen TOEFL',
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: ${tareas}');
  controlador.ejecutar(EliminarTarea(tareas, 1));

  print('Lista de tareas después de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print('Lista de tareas después de eliminar: $tareas');

// Deshacer la eliminación
  controlador.deshacer();
  print('Lista de tareas después del primer deshacer: $tareas');

  controlador.deshacer();
  print('Lista de tareas después del segundo deshacer: $tareas');

  // Cada comando conserva su propia eliminación
  // Cada comando conoce como ejecutar y revertir la acción
  // Ahora se pueden agregar más comandos a la agenda
}