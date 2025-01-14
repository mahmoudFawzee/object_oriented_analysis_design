import 'package:ch_1_well_designed_apps_rock/models/builder.dart';
import 'package:ch_1_well_designed_apps_rock/models/type.dart';
import 'package:ch_1_well_designed_apps_rock/models/wood.dart';

final class GuitarSpec {
  final GuitarWood topWood;
  final GuitarWood backWood;
  final GuitarBuilder builder;
  final GuitarType type;
  const GuitarSpec({
    required this.backWood,
    required this.builder,
    required this.topWood,
    required this.type,
  });
  bool isMatch(GuitarSpec spec) {
    if (spec.backWood.wood != backWood.wood) {
      return false;
    }
    if (spec.topWood.wood != topWood.wood) {
      return false;
    }
    if (spec.type.type != type.type) {
      return false;
    }
    if (spec.builder.builder != builder.builder) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return 'top wood : $topWood, back wood : $backWood, builder : $builder, type : $type,';
  }
}
