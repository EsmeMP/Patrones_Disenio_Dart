import '../observer/agenda.dart';

void main(){
  final agenda = Agenda();

  print('Tareas iniciales: ${agenda.tareas}');
  agenda.eliminar(1);
  print('Después de eliminar: ${agenda.tareas}');

  // el usuario se arrepiente de borrar la tarea
  agenda.deshacer();
  print('Después de deshacer: ${agenda.tareas}');
}