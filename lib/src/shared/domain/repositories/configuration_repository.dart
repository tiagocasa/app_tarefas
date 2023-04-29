import 'package:tarefas/src/shared/data/datasources/configuration_data.dart';

abstract class ConfigurationRepository {
  ConfigurationData getConfiguration();
  void saveConfiguration(String themeModeName, DateTime? syncDate);
  void deleteAll();
}
