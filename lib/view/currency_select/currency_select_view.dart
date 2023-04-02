import 'package:currency_app/resources/d_colors.dart';
import 'package:currency_app/resources/dimens.dart';
import 'package:currency_app/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import '../../locator.dart';
import '../../routing/routes.dart';
import '../../widget/view_builder.dart';
import 'currency_select_view_model.dart';

part 'currency_select_view.g.dart';

@swidget
Widget currencySelectView(void data) => ViewBuilder<CurrencySelectViewModel>(
      viewModelBuilder: () => CurrencySelectViewModel(sl(), sl(), sl()),
      onModelReady: (model) => model.getCountries(),
      builder: (model) {
        final countries = model.countries.value;
        return Scaffold(
          appBar: AppBar(
            title: Text(model.user.name, style: const TextStyle(color: DColors.dark)),
            actions: [
              IconButton(icon: const Icon(Icons.logout), onPressed: model.logOut),
            ],
          ),
          body: countries.isEmpty
              ? const Center(child: CircularProgressIndicator.adaptive())
              : Expanded(
                  child: ListView.separated(
                    separatorBuilder: (_, __) => const Divider(thickness: 1.5),
                    itemCount: countries.length,
                    itemBuilder: (c, i) {
                      final country = countries[i];
                      return ListItem(
                        country.name.common,
                        onTap: () => Routes.currencyPage(data: country.currency),
                      );
                    },
                  ),
                ),
        );
      },
    );
