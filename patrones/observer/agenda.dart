import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda{
  final PanelAlumno panel = PanelAlumno();
  final Notificador notificador = Notificador();

  void publicarTarea(String tarea){
    print('Publicando: $tarea');

    panel.mostrar(tarea);
    notificador.notificar(tarea);

    // aqui esta la mala practica (la agenda se ocupa de tres tareas)
    // viola el principio de division de responsabilidades
    // la agenda se encarga de publicar tareas como de coordinar con la UI Y las notificaciones
  }
}