import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main(){
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

// suscripcion a cada servicio observador
  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir (historial);

// ambos observadores reciben el aviso
  agenda.publicarTarea('Investigacion de patrones de diseño');

// el usuario ya no quiere recibir notificaciones
  agenda.desuscribir(notificador);

  // se genera otra tarea
  agenda.publicarTarea('Investigar el patron Facade');
  // solo el panel recibe el aviso de la nueva tarea

  // nos conviene cuando varios componenets necesitan reaccionar al mismo cambio
  // y sus suscripciones pueden variar
  // pero no implica ejecucion asincrona o paralela
}