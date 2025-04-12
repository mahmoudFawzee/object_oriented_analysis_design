import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';
import 'package:ch_1_well_designed_apps_rock/interfaces/instrument_spec.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/builder/builder.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/guitar_spec.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/type/type.dart';
import 'package:ch_1_well_designed_apps_rock/models%20copy/wood/wood.dart';
import 'package:ch_1_well_designed_apps_rock/services/inventory.dart';

void main(List<String> arguments) {
  //test app
  final inventory = Inventory();
  inventory.addInstrument(
    serialNumber: 'kmm130',
    price: 150.2,
    spec: InstrumentSpec(
      model: 'xor445',
      topWood: Wood(WoodEnum.sitka),
      backWood: Wood(WoodEnum.maple),
      builder: InstrumentBuilder(BuilderEnum.gibson),
      type: InstrumentType(TypeEnum.acoustic),
    ),
  );
  inventory.addInstrument(
    serialNumber: 'cccv12',
    price: 320.2,
    spec: InstrumentSpec(
      model: 'xor445',
      topWood: Wood(WoodEnum.sitka),
      backWood: Wood(WoodEnum.maple),
      builder: InstrumentBuilder(BuilderEnum.gibson),
      type: InstrumentType(TypeEnum.acoustic),
    ),
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
