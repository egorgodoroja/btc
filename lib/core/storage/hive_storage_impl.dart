part of "hive_storage.dart";

class _HiveStorageImpl implements HiveStorage{
  
  final Box? box;

  _HiveStorageImpl([this.box]);

  void _throw(){
    if(box==null) throw Exception("HiveStorage wasn't initialized. Please run 'await HiveStorage.init(); at first'");
  }

  @override
  String getLang(){
    _throw();
    return box!.get('lang');
  }

  @override
  Future<void> setLang(String lang) async {
    _throw();
    await box!.put('lang', lang);
  }
}