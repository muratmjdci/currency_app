import 'package:currency_app/data/error/derror.dart';
import 'package:currency_app/data/status/status.dart';
import 'package:currency_app/services/dio_service.dart';
import 'package:injectable/injectable.dart';

import '../data/country/country.dart';

@lazySingleton
class CountryService {
  late final DioService _dioService;
  CountryService(this._dioService);
  Future<Status> getCountries([String? args = '']) async {
    final res = await _dioService.get(Endpoints.currencies, args);
    if (res.statusCode == 200) return Status(success: true, data: res.data['data']);
    return Status(success: false, error: DError(errorCode: res.statusCode ?? 500, errorMsg: "ERROR"));
  }

  Future<Status> getCountryByCurrency(String currency) async {
    try {
      final res = await _dioService.get(Endpoints.country, currency);
      if (res.statusCode == 200) return Status(success: true, data: Country.fromJson(res.data.first));
      return const Status(success: false);
    } catch (e) {
      return const Status(success: false);
    }
  }
}
