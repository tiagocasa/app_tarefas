import 'package:realm/realm.dart';

import '../../core/configuration/data/datasources/configuration_data.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationData.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(
      ConfigurationData('system'),
    );
  },
);
