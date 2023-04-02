import 'package:currency_app/services/persistance_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

import '../../routing/routes.dart';
import '../../services/auth_service.dart';

class LoginViewModel extends BaseViewModel {
  late final AuthService _authService;
  late final PersistanceService _persistanceService;

  LoginViewModel(this._authService, this._persistanceService);
  late final formKey = GlobalKey<FormState>();
  late final user = TextEditingController();
  late final password = TextEditingController();

  Future auth() async {
    if (!formKey.currentState!.validate()) return;
    final res = await _authService.grantUser(user.text, password.text);
    if (!res.success) return Fluttertoast.showToast(msg: res.error!.errorMsg);
    final box = await _persistanceService.openBox(Boxes.auth);
    await _persistanceService.put(box, key: Cached.islogin, value: true);
    await _persistanceService.put(box, key: Cached.user, value: res.data);
    Routes.currencySelect();
  }
}
