import 'observador.dart';

class Agenda{

  final List<Observador> _observadores = [];

// la agenda se esta suscribiendo a un servicio
  void suscribir (Observador observador){
    _observadores.add(observador);
  }

  void desuscribir (Observador observador){
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea){
    print('Publicando: $tarea');

  for (final observador in _observadores){
      observador.actualizar(tarea);
    }

    // aqui la agenda se ocupa de crear observadores (servicios)
  
    // aqui esta la mala practica (la agenda se ocupa de tres tareas)
    // viola el principio de division de responsabilidades
    // la agenda se encarga de publicar tareas como de coordinar con la UI Y las notificaciones
  }
}