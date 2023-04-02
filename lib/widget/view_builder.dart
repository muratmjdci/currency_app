import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:stacked/stacked.dart';

import '../locator.dart';
import '../resources/d_colors.dart';

part 'view_builder.g.dart';

@swidget
Widget _valueListener<T>({required ValueListenable<T> listenable, required Widget Function(T) builder}) =>
    ValueListenableBuilder<T>(valueListenable: listenable, builder: (_, value, __) => builder(value));

@swidget
Widget _viewBuilder<T extends BaseViewModel>({
  required T Function() viewModelBuilder,
  required Widget Function(T) builder,
  Function(T)? onModelReady,
}) =>
    ViewModelBuilder<T>.reactive(
      viewModelBuilder: viewModelBuilder,
      onViewModelReady: onModelReady,
      builder: (_, model, __) => builder(model),
    );

@swidget
Widget _loadingViewBuilder<T extends BaseViewModel>({
  required T Function() viewModelBuilder,
  required final Widget Function(T) builder,
  final Function(T)? onModelReady,
  final bool Function(T)? isBusyFunc,
  final bool isFullScreen = false,
  final Color busyColor = Colors.white,
}) =>
    ViewModelBuilder<T>.reactive(
      viewModelBuilder: viewModelBuilder,
      onViewModelReady: onModelReady,
      builder: (_, model, __) {
        final widget = ModalProgress(
          busyColor: busyColor,
          isLoading: isBusyFunc?.call(model) ?? model.isBusy,
          child: builder(model),
        );
        return isFullScreen ? widget : IntrinsicHeight(child: widget);
      },
    );

@swidget
Widget _modalProgress({Color busyColor = DColors.barrier, required bool isLoading, required Widget child}) =>
    !isLoading ? child : Stack(children: [child, Barrier(color: busyColor), const CenterLoading()]);

@swidget
Widget _centerLoading() => const Center(child: Loading());

@swidget
Widget _loading() => const CircularProgressIndicator.adaptive();

@swidget
Widget _barrier({Color color = DColors.barrier}) => ModalBarrier(dismissible: false, color: color);

const silent = ObjectKey('silent');

final loading = ValueNotifier(false);

extension BaseViewModelExtensions on BaseViewModel {
  request(Function call, {Object? to, bool handleError = true, bool closeKeyboard = true}) =>
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (closeKeyboard) navigator.closeKeyboard();
        if (to != silent) {
          if (to != null) {
            setBusyForObject(to, true);
          } else {
            loading.value = true;
          }
        }
        await handling(call, handleError: handleError);
        if (to != silent) {
          if (to != null) {
            setBusyForObject(to, false);
          } else {
            loading.value = false;
          }
        }
      });
}

handling(Function call, {bool handleError = true}) async {
  try {
    await call();
  } catch (e, s) {}
}

nonBlocking(Function call) async {
  final l = loading.value;
  try {
    loading.value = false;
    await call();
  } catch (_) {
  } finally {
    loading.value = l;
  }
}
