import 'package:currency_app/data/country/country.dart';
import 'package:currency_app/services/auth_service.dart';
import 'package:currency_app/services/country_service.dart';
import 'package:currency_app/services/persistance_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

import '../../data/user/user.dart';
import '../../routing/routes.dart';

class CurrencySelectViewModel extends BaseViewModel {
  late final AuthService _authService;
  late final CountryService _countryService;
  late final PersistanceService _persistanceService;
  final ValueNotifier<List<Country>> countries = ValueNotifier<List<Country>>([]);
  CurrencySelectViewModel(this._authService, this._countryService, this._persistanceService);

  User get user => _authService.user!;

  logOut() async {
    final box = await _persistanceService.openBox(Boxes.auth);
    await _persistanceService.clearWithKey(box, key: Cached.islogin);
    await _persistanceService.clearWithKey(box, key: Cached.user);
    Routes.splash(clearStack: true);
  }

  getCountries() async {
    final countries = await _countryService.getCountries();
    final List<Country> countryList = [];
    if (countries.success) {
      for (var element in (countries.data as Map).entries) {
        final currency = await _getCountryName(element.key);
        if (currency != null) countryList.add(currency);
      }
    }
    this.countries.value = countryList;
    notifyListeners();
  }

  Future<Country?> _getCountryName(String currency) async {
    //return country if exists in server.
    final res = await _countryService.getCountryByCurrency(currency);
    return (res.data as Country?)?.copyWith(currency: currency);
  }
}
