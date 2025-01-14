import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';
import 'package:ch_1_well_designed_apps_rock/models/builder.dart';
import 'package:ch_1_well_designed_apps_rock/models/guitar_spec.dart';
import 'package:ch_1_well_designed_apps_rock/models/type.dart';
import 'package:ch_1_well_designed_apps_rock/models/wood.dart';
import 'package:ch_1_well_designed_apps_rock/services/inventory.dart';

void main(List<String> arguments) {
  //test app
  final inventory = Inventory();
  inventory.addGuitar(
    serialNumber: 'lll2000',
    price: 50.2,
    topWood: GuitarWood(WoodEnum.adirondack),
    backWood: GuitarWood(WoodEnum.alder),
    builder: GuitarBuilder(BuilderEnum.collings),
    type: GuitarType(TypeEnum.electric),
  );
  inventory.addGuitar(
    serialNumber: 'll2001',
    price: 150.2,
    topWood: GuitarWood(WoodEnum.brazilianRoseWood),
    backWood: GuitarWood(WoodEnum.indianRoseWood),
    builder: GuitarBuilder(BuilderEnum.fender),
    type: GuitarType(TypeEnum.electric),
  );
  inventory.addGuitar(
    serialNumber: 'lkl1200',
    price: 200.2,
    topWood: GuitarWood(WoodEnum.sitka),
    backWood: GuitarWood(WoodEnum.maple),
    builder: GuitarBuilder(BuilderEnum.gibson),
    type: GuitarType(TypeEnum.acoustic),
  );
  inventory.addGuitar(
    serialNumber: 'kmm130',
    price: 150.2,
    topWood: GuitarWood(WoodEnum.sitka),
    backWood: GuitarWood(WoodEnum.maple),
    builder: GuitarBuilder(BuilderEnum.gibson),
    type: GuitarType(TypeEnum.acoustic),
  );

  final GuitarSpec requestedGuitarSpec = GuitarSpec(
    topWood: GuitarWood(WoodEnum.sitka),
    backWood: GuitarWood(WoodEnum.maple),
    builder: GuitarBuilder(BuilderEnum.gibson),
    type: GuitarType(TypeEnum.acoustic),
  );
  final searchedGuitars = inventory.search(
    guitarSpec: requestedGuitarSpec,
  );
  inventory.showNumberOfGuitarsInInventory();
  print('number of guitars : ${searchedGuitars.length}');
  for (var guitar in searchedGuitars) {
    print(guitar.toString());
  }
}
