import 'package:currency_app/services/auth_service.dart';
import 'package:currency_app/services/persistance_service.dart';
import 'package:stacked/stacked.dart';

import '../../routing/routes.dart';

class SplashPageViewModel extends BaseViewModel {
  late final PersistanceService _persistanceService;
  late final AuthService _authService;
  SplashPageViewModel(this._persistanceService, this._authService);

  init() async {
    final isLogin = await _checkLogin();
    if (isLogin) {
      final box = await _persistanceService.openBox(Boxes.auth);
      final user = _persistanceService.get(box, key: Cached.user);
      _authService.user = user;
      return Routes.currencySelect(clearStack: true);
    }

    return Routes.login(clearStack: true);
  }

  Future<bool> _checkLogin() async {
    final box = await _persistanceService.openBox(Boxes.auth);
    return await _persistanceService.get(box, key: Cached.islogin) as bool;
  }
}
