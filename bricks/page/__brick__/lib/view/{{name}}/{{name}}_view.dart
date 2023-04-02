import '../../widget/view_builder.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import '{{name}}_view_model.dart';

part '{{name}}_view.g.dart';

@swidget
Widget {{#camelCase}}{{name}}{{/camelCase}}View(void data) => ViewBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}ViewModel>(
      viewModelBuilder: () => {{#pascalCase}}{{name}}{{/pascalCase}}ViewModel(),
      builder: (model) => Scaffold(),
    );

/*
TODO add these to routes
import 'package:currency_app/view/{{name}}/{{name}}_view.dart';
{{#camelCase}}{{name}}{{/camelCase}}({{#pascalCase}}{{name}}{{/pascalCase}}View.new),
*/

