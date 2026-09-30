import 'figura_geometrica.dart';
import 'triangulo.dart';

void main(){
  // no se puede instanciar (crear un onjeto de una clase abstracta)
  // FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo();

  unTriangulo.obtenerArea();
  print('Area de un triangulo; ${unTriangulo.area}');
}