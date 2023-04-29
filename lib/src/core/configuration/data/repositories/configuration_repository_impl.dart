import 'package:realm/realm.dart';

import '../../domain/repositories/configuration_repository.dart';
import '../datasources/configuration_data.dart';

class ConfigurationRepositoryImpl implements ConfigurationRepository {
  final Realm realm;
  ConfigurationRepositoryImpl(this.realm);

  @override
  ConfigurationData getConfiguration() {
    return realm.all<ConfigurationData>().first;
  }

  @override
  void saveConfiguration(String themeModeName, DateTime? syncDate) {
    final model = getConfiguration();
    realm.write(() {
      model
        ..syncDate = syncDate
        ..themeModeName = themeModeName;
    });
  }

  @override
  void deleteAll() {
    realm.deleteAll();
  }
}
