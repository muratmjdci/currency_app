import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioService {
  late final Dio _dio;

  init() {
    _dio = Dio();
  }

  Future<Response> get(Endpoints endpoint, [String? args = '']) async => await _dio.get(endpoint() + args);
}

enum Endpoints {
  currencies('https://api.freecurrencyapi.com/v1/latest?apikey=gVJrn2XeCXDAlZ5W10N27GA1PK8VUHihYnFscmOS'),
  country('https://restcountries.com/v3.1/currency/');

  final String url;
  const Endpoints(this.url);

  call() => url;
}
