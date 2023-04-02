import 'package:validatorless/validatorless.dart';

String? Function(String?) reqMin3 = Validatorless.multiple([
  Validatorless.required("m"),
  Validatorless.min(3, "m"),
]);
