// import 'documento-excel.dart';
// import 'documento-json.dart';
// import 'documento-texto.dart';
import 'documento.dart';

abstract class GeneradorReportes {

  // Este ess el Factory Method que debe ser implementado por las subclases
  Documento crearDocumento();

  void generarReporte(List<int> calificaciones){
    if (calificaciones.isEmpty){
      throw ArgumentError('El reporte necesita calificaciones');
    }

    final documento = crearDocumento();

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
  
}