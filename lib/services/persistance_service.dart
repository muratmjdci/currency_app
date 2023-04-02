import 'package:currency_app/data/user/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PersistanceService {
  init() async {
    await Hive.initFlutter();
    configureAdapters();
  }

  configureAdapters() {
    Hive.registerAdapter(UserAdapter());
  }

  Future<Box> openBox(Boxes box) async => await Hive.openBox(box.name);

  dynamic get(Box box, {required Cached key}) => box.get(key.name) ?? false;

  Future<void> put(Box box, {required Cached key, dynamic value}) async {
    if (!box.isOpen) throw Exception("Box is closed");
    await box.put(key.name, value);
  }

  Future<void> clearWithKey(Box box, {required Cached key}) async => await box.delete(key.name);
}

enum Cached { islogin, user }

enum Boxes { auth }
