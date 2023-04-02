import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../routing/routes.dart';

@lazySingleton
class NavigatorService {
  final routeObserver = RouteObserver<PageRoute>();
  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get _currentState => navigatorKey.currentState;

  BuildContext? get _context => _currentState?.overlay?.context;

  BuildContext get context => _context!;

  Future<T?>? navigateTo<T>(Uri uri, {bool replace = false, bool clearStack = false}) {
    final route = uri.toString();
    if (clearStack) return _currentState?.pushNamedAndRemoveUntil(route, (r) => false);
    if (replace) return _currentState?.pushReplacementNamed(route);
    return _currentState?.pushNamed(route);
  }

  void goBack<T extends Object>([T? result]) => _currentState?.pop(result);

  void goBackUntil<T extends Object>(Routes until) => _currentState?.popUntil((r) => r.settings.name == until.name);

  // bottomSheet({required Widget child}) => showModalBottomSheet(
  //       isScrollControlled: true,
  //       context: context,
  //       shape: bsBorder,
  //       builder: (context) => SafeArea(child: Padding(padding: MediaQuery.of(context).viewInsets, child: child)),
  //     );

  search({required SearchDelegate delegate}) => showSearch(context: context, delegate: delegate);

  // dialog({
  //   String? title,
  //   String? description,
  //   Widget? header,
  //   String? negativeButtonText,
  //   Function()? negativeButtonAction,
  //   String? positiveButtonText,
  //   Function()? positiveButtonAction,
  //   bool persistent = false,
  // }) =>
  //     showDialog(
  //       context: context,
  //       barrierDismissible: !persistent,
  //       builder: (_) => CustomDialogView(
  //         title: title,
  //         description: description,
  //         header: header,
  //         positiveButtonText: positiveButtonText ?? (persistent ? null : Tr.popupButtonText()),
  //         positiveButtonAction: positiveButtonAction ?? (persistent ? null : () => goBack()),
  //         negativeButtonText: negativeButtonText,
  //         negativeButtonAction: negativeButtonAction ?? () => goBack(),
  //       ),
  //     );

  // dateChooser(DateTime? initialDate) {
  //   final lastDate = now.subtract(const Duration(days: 18 * 365));
  //   return showDatePicker(
  //     context: context,
  //     initialDate: initialDate ?? lastDate,
  //     firstDate: DateTime(1900),
  //     lastDate: lastDate,
  //   );
  // }

  closeKeyboard() => FocusScope.of(context).unfocus();
}
