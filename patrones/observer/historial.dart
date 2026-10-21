import 'observador.dart';

class Historial implements Observador{
  void actualizar (String tarea){
    // recibir a nueva tarea  y almacenarla en el historial
    // el historial puede ser local 
    // en memoria; una lista de tarea
    // en una db local; sqlite
    // o en una db en la nube

    print('Historial: registrar nueva tarea: $tarea');
  }

}