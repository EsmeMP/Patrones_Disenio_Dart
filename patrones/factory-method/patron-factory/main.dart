import 'generador-excel.dart';
import 'generador-json.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';

void main(){

  final generadores = <GeneradorReportes>[
    GeneradorExcel(),
    GeneradorJson(),
    GeneradorTexto()
  ];

  for ( final generador in generadores){
    generador.generarReporte([10,9,8,0,0,10,8]);
  }

}