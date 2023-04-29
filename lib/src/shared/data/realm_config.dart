import 'package:realm/realm.dart';

import 'datasources/configuration_data.dart';

LocalConfiguration config = Configuration.local([
  ConfigurationData.schema,
], initialDataCallback: (realm) {
  realm.add(
    ConfigurationData('system'),
  );
});
