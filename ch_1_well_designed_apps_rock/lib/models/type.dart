import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';

final class GuitarType {
  final TypeEnum type;
  const GuitarType(this.type);
  @override
  String toString() {
    switch (type) {
      case TypeEnum.electric:
        return 'electric';
      case TypeEnum.acoustic:
        return 'acoustic';
      default:
        return 'unknown';
    }
  }
}
