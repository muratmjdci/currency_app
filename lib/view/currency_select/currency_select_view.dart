import 'package:currency_app/resources/d_colors.dart';
import 'package:currency_app/resources/dimens.dart';
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
      builder: (model) => Scaffold(
        appBar: AppBar(
          title: Text(model.user.name, style: const TextStyle(color: DColors.dark)),
          actions: [
            IconButton(icon: const Icon(Icons.logout), onPressed: model.logOut),
          ],
        ),
        body: Column(
          children: [
            Builder(builder: (_) {
              if (model.countries.value.isEmpty) return const Center(child: CircularProgressIndicator.adaptive());
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (_, __) => const Divider(thickness: 1.5),
                  itemCount: model.countries.value.length,
                  itemBuilder: (c, i) {
                    final country = model.countries.value[i];
                    return InkWell(
                      onTap: () => Routes.currencyPage(data: country.currency),
                      child: Padding(
                        padding: const EdgeInsets.all(DDimens.sm),
                        child: Text(country.name.common),
                      ),
                    );
                  },
                ),
              );
            })
          ],
        ),
      ),
    );
