import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/builder/builder.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/guitar_spec.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/type/type.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/wood/wood.dart';
import 'package:ch_1_well_designed_apps_rock/services/inventory.dart';

void main(List<String> arguments) {
  //test app
  final inventory = Inventory();
  inventory.addGuitar(
    model: '569ddd',
    numStrings: '5',
    serialNumber: 'lll2000',
    price: 50.2,
    topWood: Wood(WoodEnum.adirondack),
    backWood: Wood(WoodEnum.alder),
    builder: InstrumentBuilder(BuilderEnum.collings),
    type: InstrumentType(TypeEnum.electric),
  );
  inventory.addGuitar(
    model: 'gg455',
    numStrings: '9',
    serialNumber: 'll2001',
    price: 150.2,
    topWood: Wood(WoodEnum.brazilianRoseWood),
    backWood: Wood(WoodEnum.indianRoseWood),
    builder: InstrumentBuilder(BuilderEnum.fender),
    type: InstrumentType(TypeEnum.electric),
  );
  inventory.addGuitar(
    model: 'yoo88',
    numStrings: '8',
    serialNumber: 'lkl1200',
    price: 200.2,
    topWood: Wood(WoodEnum.sitka),
    backWood: Wood(WoodEnum.maple),
    builder: InstrumentBuilder(BuilderEnum.gibson),
    type: InstrumentType(TypeEnum.acoustic),
  );

  inventory.addGuitar(
    serialNumber: 'kmm130',
    price: 150.2,
    model: 'xor445',
    numStrings: '12',
    topWood: Wood(WoodEnum.sitka),
    backWood: Wood(WoodEnum.maple),
    builder: InstrumentBuilder(BuilderEnum.gibson),
    type: InstrumentType(TypeEnum.acoustic),
  );

  final requestedGuitarSpec = GuitarSpec(
    model: 'xor445',
    numStrings: '12',
    topWood: Wood(WoodEnum.sitka),
    backWood: Wood(WoodEnum.maple),
    builder: InstrumentBuilder(BuilderEnum.gibson),
    type: InstrumentType(TypeEnum.acoustic),
  );
  
  final searchedGuitars = inventory.search(
    guitarSpec: requestedGuitarSpec,
  );
  inventory.showNumberOfGuitarsInInventory();
  print('found guitars : ${searchedGuitars.length}');
  for (var guitar in searchedGuitars) {
    print(guitar.toString());
  }
}
