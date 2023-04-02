import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';

import '../../data/auth/auth.dart';
import '../../data/user/user.dart';

const supportedLocales = [Locale("tr")];

@lazySingleton
class AssetMap {
  late final List<User> _users = [];
  late final List<Auth> _auth = [];
  late Map<String, dynamic> _data;

  AssetMap();

  List<Auth> get auth => _auth;
  List<User> get users => _users;

  init() async {
    final List<String> assets = await Future.wait([
      rootBundle.loadString('assets/data/users.json'),
      rootBundle.loadString('assets/data/auth.json'),
      rootBundle.loadString('assets/strings/tr.json'),
    ]);
    final userList = json.decode(assets[0])['data'];
    final auth = json.decode(assets[1])['data'];

    for (var i = 0; i < userList.length; i++) {
      _users.add(User.fromJson(userList[i]));
    }

    for (var i = 0; i < userList.length; i++) {
      _auth.add(Auth.fromJson(auth[i]));
    }

    _data = json.decode(assets[2]);
  }

  String? operator [](String? key) => _data[key];

  Map<int, String> getList(String prefix) => Map.fromEntries(
        _data.entries
            .where((e) => e.key.startsWith(prefix) && int.tryParse(e.key.substring(prefix.length)) != null)
            .map((e) => MapEntry(int.parse(e.key.substring(prefix.length)), e.value.toString())),
      );
}
