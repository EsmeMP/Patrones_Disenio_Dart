import 'documento.dart';
import 'dart:convert';

class DocumentoJson implements Documento{

  @override
  String generar(List<int> calificaciones){
    // aqui debe implementarse el json
    return jsonEncode({'calificaciones en formato ': calificaciones});
  }
}