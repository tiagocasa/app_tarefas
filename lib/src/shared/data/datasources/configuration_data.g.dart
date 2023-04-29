// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_data.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ConfigurationData extends _ConfigurationData
    with RealmEntity, RealmObjectBase, RealmObject {
  ConfigurationData(
    String themeModeName, {
    DateTime? syncDate,
  }) {
    RealmObjectBase.set(this, 'themeModeName', themeModeName);
    RealmObjectBase.set(this, 'syncDate', syncDate);
  }

  ConfigurationData._();

  @override
  String get themeModeName =>
      RealmObjectBase.get<String>(this, 'themeModeName') as String;
  @override
  set themeModeName(String value) =>
      RealmObjectBase.set(this, 'themeModeName', value);

  @override
  DateTime? get syncDate =>
      RealmObjectBase.get<DateTime>(this, 'syncDate') as DateTime?;
  @override
  set syncDate(DateTime? value) => RealmObjectBase.set(this, 'syncDate', value);

  @override
  Stream<RealmObjectChanges<ConfigurationData>> get changes =>
      RealmObjectBase.getChanges<ConfigurationData>(this);

  @override
  ConfigurationData freeze() =>
      RealmObjectBase.freezeObject<ConfigurationData>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ConfigurationData._);
    return const SchemaObject(
        ObjectType.realmObject, ConfigurationData, 'ConfigurationData', [
      SchemaProperty('themeModeName', RealmPropertyType.string),
      SchemaProperty('syncDate', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}
