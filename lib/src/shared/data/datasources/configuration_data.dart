import 'package:realm/realm.dart';

part 'configuration_data.g.dart';

@RealmModel()
class _ConfigurationData {
  late String themeModeName;
  late DateTime? syncDate;
}
