import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';

final class GuitarWood {
  final WoodEnum wood;
  const GuitarWood(this.wood);
  @override
  toString() {
    switch (wood) {
      case WoodEnum.adirondack:
        return 'adirondack';
      case WoodEnum.alder:
        return 'alder';
      case WoodEnum.brazilianRoseWood:
        return 'brazilian Rose WoodEnum';
      case WoodEnum.cocobolo:
        return 'coco bolo';
      case WoodEnum.cedar:
        return 'cedar';
      case WoodEnum.sitka:
        return 'sitka';
      case WoodEnum.mahogany:
        return 'mahogany';
      case WoodEnum.indianRoseWood:
        return 'indian Rose WoodEnum';
      case WoodEnum.maple:
        return 'maple';
      default:
        return 'unknown';
    }
  }
}
