import 'documento-excel.dart';
import 'documento-json.dart';
import 'documento-texto.dart';
import 'documento.dart';

class GeneradorReportes {

  void generarReporte(String formato, List<int> calificaciones){
    if (calificaciones.isEmpty){
      throw ArgumentError('El reporte necesita calificaciones');
    }

    // este objeto conoce todas las implementaciones concretas, en una clase abstracta no puedo instanciar
    Documento documento;

    switch ( formato ){
      case 'texto':
      documento = DocumentoTexto();
    break;
    case 'json':
      documento = DocumentoJson();
    break;
    case 'excel':
      documento = DocumentoExcel();
    default:
      throw ArgumentError('Formato invalido: $formato');
    }

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente');
  }
  
}