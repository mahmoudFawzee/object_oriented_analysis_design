import 'package:ch_1_well_designed_apps_rock/models/guitar_spec.dart';

final class Guitar {
  final String serialNumber;
  final double price;
  final GuitarSpec guitarSpec;
  const Guitar({
    required this.serialNumber,
    required this.price,
    required this.guitarSpec,
  });
  @override
  String toString() {
    return ' serial number : $serialNumber, price : $price, $guitarSpec';
  }
}
