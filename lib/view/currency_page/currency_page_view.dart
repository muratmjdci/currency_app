import 'package:currency_app/resources/dimens.dart';
import 'package:currency_app/widget/list_item.dart';
import 'package:flutter/services.dart';

import '../../locator.dart';
import '../../resources/d_colors.dart';
import '../../resources/strings/tr.dart';
import '../../widget/view_builder.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'currency_page_view_model.dart';

part 'currency_page_view.g.dart';

@swidget
Widget currencyPageView(String currency) => ViewBuilder<CurrencyPageViewModel>(
      viewModelBuilder: () => CurrencyPageViewModel(sl()),
      onModelReady: (model) => model.getRestCountries(currency),
      builder: (model) => Scaffold(
        appBar: AppBar(
          title: Text(currency, style: const TextStyle(color: DColors.dark)),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(DDimens.sm),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: model.amount,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: Tr.currencyHint()),
                        onChanged: (_) => model.updateAmounts(),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(builder: (context) {
                  if (model.countries.value.isEmpty) return const Center(child: CircularProgressIndicator.adaptive());
                  return ListView.separated(
                    separatorBuilder: (_, __) => const Divider(thickness: 1.5),
                    itemCount: model.countries.value.length,
                    itemBuilder: (c, i) {
                      final currency = model.countries.value[i];
                      return ListItem(
                        currency.currencyCode,
                        trailing: Text(model.amount.value.text.isEmpty
                            ? currency.rate.toStringAsFixed(2)
                            : currency.amount!.toStringAsFixed(2)),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );

/*
TODO add these to routes

*/

