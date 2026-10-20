// adapter; adaptador
// traduce la interfaz y los datos
// conectar con la libreria que no se puede modificar

import 'medio_pago.dart';
import 'terminal-externa.dart';

class TerminalAdapter implements MedioPago{
  final TerminalExterna terminal;

  TerminalAdapter(this.terminal);

  @override
  void pagar(double pesos){
    final dolares = pesos / 18.0;
    terminal.cobrar(dolares);
  }
}