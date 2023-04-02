import 'package:currency_app/data/currency/currency.dart';
import 'package:currency_app/services/country_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class CurrencyPageViewModel extends BaseViewModel {
  late final CountryService _countryService;
  ValueNotifier<List<Currency>> countries = ValueNotifier([]);
  late final TextEditingController amount = TextEditingController();

  CurrencyPageViewModel(this._countryService);

  getRestCountries(String currency) async {
    final countriesResponse = await _countryService.getCountries("&base_currency=$currency");
    if (!countriesResponse.success) return;

    final Map<String, dynamic> countriesData = countriesResponse.data as Map<String, dynamic>;
    final countryList = countriesData.entries
        .where((entry) => currency != entry.key)
        .map((entry) => Currency(
              currencyCode: entry.key,
              rate: double.parse(entry.value.toString()),
              amount: double.parse(entry.value.toString()),
            ))
        .toList();

    countries.value = countryList;
    notifyListeners();
  }

  updateAmounts() {
    if (amount.text.isEmpty) return;
    final double enteredAmount = double.tryParse(amount.text) ?? 0.0;
    final updatedCountries =
        countries.value.map((country) => country.copyWith(amount: country.rate * enteredAmount)).toList();

    countries.value = updatedCountries;
    notifyListeners();
  }
}
