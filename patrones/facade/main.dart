import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main(){
  final cine = CineFacade(
    Proyector(), 
    SistemaAudio(),
    Reproductor()
    );

  //Iniciar la película
  cine.verPelicula('Ratatouille', 25);

  //Detener la película
  cine.terminarReproduccion();

  // la fachada coordina todos los pasos para lograr el objetivo
  // el usuario solo conoce los metodos sencillos(ver pelicula)
  // el procedimiento se concentra en una sola clase 'facade'
  // el usuario no necesita conocer a las clases involucradas
}