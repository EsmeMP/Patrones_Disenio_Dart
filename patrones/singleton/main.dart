import 'configuracion.dart';

void main(){
  final pantallaInicio = Configuracion();
  final pantallaPerfil = Configuracion();

  print('idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');

  pantallaInicio.idioma = 'en';

  print('idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('idioma de la pantalla de perfil: ${pantallaPerfil.idioma}');
  
  print(identical(pantallaInicio, pantallaPerfil)
    ? 'Ambas pantallas son la misma instancia'
    : 'las pantallas son instancias diferentes'
  );
}