import "package:hive_flutter/hive_flutter.dart";

part "hive_storage_impl.dart";

///The [HiveStorage] class needs to hold some data inside application memory
abstract class HiveStorage {

  ///The [getLang] method is used to get the language key
  String getLang();

  ///The [setLang] method is used to insert a new language key into application memory
  Future<void> setLang(String lang);

  static HiveStorage _instance = _HiveStorageImpl();

  ///The [init] method initializes the hive storage and loads data from hive
  static Future<void> init() async {
    await Hive.initFlutter();

    final Box box = await Hive.openBox('box');

    _instance = _HiveStorageImpl(box);
  }

  ///The [instance] is the only way to access [HiveStorage]
  static HiveStorage get instance => _instance;

  ///The [I] shortcut also represents [HiveStorage] instance
  static HiveStorage get I => _instance;
}