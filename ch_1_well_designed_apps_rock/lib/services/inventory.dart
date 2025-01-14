import 'package:ch_1_well_designed_apps_rock/models/builder.dart';
import 'package:ch_1_well_designed_apps_rock/models/guitar.dart';
import 'package:ch_1_well_designed_apps_rock/models/guitar_spec.dart';
import 'package:ch_1_well_designed_apps_rock/models/type.dart';
import 'package:ch_1_well_designed_apps_rock/models/wood.dart';

final class Inventory {
  final List<Guitar> _guitars = [];
  void addGuitar({
    required String serialNumber,
    required double price,
    required GuitarWood topWood,
    required GuitarWood backWood,
    required GuitarBuilder builder,
    required GuitarType type,
  }) {
    final guitar = Guitar(
      serialNumber: serialNumber,
      price: price,
      guitarSpec: GuitarSpec(
        backWood: backWood,
        builder: builder,
        topWood: topWood,
        type: type,
      ),
    );
    _guitars.add(guitar);
  }

  Guitar getGuitar({
    required String serialNumber,
  }) {
    final guitars = _guitars.where(
      (element) {
        return element.serialNumber == serialNumber;
      },
    );
    return guitars.first;
  }

  List<Guitar> search({required GuitarSpec guitarSpec}) {
    final List<Guitar> searchedGuitars = [];
    for (var guitar in _guitars) {
      if (guitar.guitarSpec.isMatch(guitarSpec)) searchedGuitars.add(guitar);
    }
    return searchedGuitars;
  }

  showNumberOfGuitarsInInventory() {
    print('we have ${_guitars.length} guitars in stock');
  }
}
