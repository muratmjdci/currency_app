import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import '../resources/dimens.dart';
part 'list_item.g.dart';

@swidget
Widget _listItem(text, {Function()? onTap, Widget? trailing}) {
  return Padding(
    padding: const EdgeInsets.all(DDimens.sm),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onTap,
          child: Text(text),
        ),
        if (trailing != null) trailing
      ],
    ),
  );
}
