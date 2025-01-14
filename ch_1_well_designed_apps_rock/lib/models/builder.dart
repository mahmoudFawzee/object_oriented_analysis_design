import 'package:ch_1_well_designed_apps_rock/enum/enums.dart';

final class GuitarBuilder {
  final BuilderEnum builder;
  const GuitarBuilder(this.builder);
  @override
  String toString() {
    switch (builder) {
      case BuilderEnum.any:
        return 'any';
      case BuilderEnum.collings:
        return 'collings';

      case BuilderEnum.fender:
        return 'fender';

      case BuilderEnum.gibson:
        return 'gibson';

      case BuilderEnum.martin:
        return 'martin';

      case BuilderEnum.olson:
        return 'olson';
      case BuilderEnum.prs:
        return 'prs';

      case BuilderEnum.ryan:
        return 'ryan';

      default:
        return 'unknown';
    }
  }
}
