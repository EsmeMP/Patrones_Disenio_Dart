import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda{
  // problema 1 la tienda tinee dos servicio de pago
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizarCompra(double total, String metodo){
    if (metodo == 'servicio'){
      servicioPago.pagar(total);
    }else if (metodo == 'terminal'){
      // la tienda debe convertir pesos a dolares
      // NO ES SU RESPONSBILIDAD
       terminalExterna.cobrar(total / 18);
    } else{
      throw ArgumentError('Metodo de pago no valido');
    }    
  }
}