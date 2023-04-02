import '../../locator.dart';
import '../../widget/view_builder.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'splash_page_view_model.dart';

part 'splash_page_view.g.dart';

@swidget
Widget splashPageView(void data) => ViewBuilder<SplashPageViewModel>(
      viewModelBuilder: () => SplashPageViewModel(sl(), sl()),
      onModelReady: (model) => model.init(),
      builder: (model) => const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
