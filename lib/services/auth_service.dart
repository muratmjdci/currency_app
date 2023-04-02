import 'package:collection/collection.dart';
import 'package:currency_app/data/error/derror.dart';
import 'package:currency_app/data/status/status.dart';
import 'package:currency_app/resources/strings/asset_map.dart';
import 'package:currency_app/services/persistance_service.dart';
import 'package:injectable/injectable.dart';

import '../data/auth/auth.dart';
import '../data/user/user.dart';

@lazySingleton
class AuthService {
  final AssetMap asset;
  AuthService(this.asset);

  User? user;
  List<Auth> get authList => asset.auth;
  List<User> get users => asset.users;

  Future<Status> grantUser(String username, String password) async {
    final auth = authList.firstWhereOrNull((element) => element.username == username);
    if (auth == null) return const Status(success: false, error: DError(errorMsg: "user not found", errorCode: 404));
    final bool pwMatch = auth.password == password;
    if (!pwMatch) return const Status(success: false, error: DError(errorMsg: "wrong password", errorCode: 401));
    return _getUserById(auth.id);
  }

  Future<Status> _getUserById(int id) async {
    final user = users.firstWhereOrNull((el) => el.id == id);
    if (user == null) return const Status(success: false, error: DError(errorMsg: "user not found", errorCode: 404));
    this.user = user;
    return Status(success: true, data: user);
  }
}
