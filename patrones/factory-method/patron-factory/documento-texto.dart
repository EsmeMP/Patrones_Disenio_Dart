import 'documento.dart';

// implements heredacion forzada \\ extends se hereda menos
class DocumentoTexto implements Documento{
  
  @override
  String generar(List<int> calificaciones){
    return 'Calificaciones en formato texto : ${calificaciones.join(" , ")}';
  }
  
}