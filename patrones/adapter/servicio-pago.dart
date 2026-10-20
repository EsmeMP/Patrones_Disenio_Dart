import 'medio_pago.dart';

class ServicioPago implements MedioPago {
  void pagar(double pesos) {
    print('Servicio de pago: ${pesos} pesos');
  }
}