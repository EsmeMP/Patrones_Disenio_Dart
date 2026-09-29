class Configuracion {
  // CONSTRUCTOR PRIVADO
  Configuracion._();
  // LO QUE ES STATIC VIDE DURANTE TODO EL CICLO DE LA APPP
  // FINAL; no s3 puede cambiar la referencia de la variable
  static final Configuracion _instancia = Configuracion._();
  // ES UN CONSTRUCTOR DE FABRICA QUE DEVUELVE LA MISMA INSTANCIA
  factory Configuracion() => _instancia;
  String idioma = 'es';
}