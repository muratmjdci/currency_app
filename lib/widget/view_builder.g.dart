// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_builder.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ValueListener<T> extends StatelessWidget {
  const ValueListener({
    Key? key,
    required this.listenable,
    required this.builder,
  }) : super(key: key);

  final ValueListenable<T> listenable;

  final Widget Function(T) builder;

  @override
  Widget build(BuildContext _context) => _valueListener<T>(
        listenable: listenable,
        builder: builder,
      );
}

class ViewBuilder<T extends BaseViewModel> extends StatelessWidget {
  const ViewBuilder({
    Key? key,
    required this.viewModelBuilder,
    required this.builder,
    this.onModelReady,
  }) : super(key: key);

  final T Function() viewModelBuilder;

  final Widget Function(T) builder;

  final dynamic Function(T)? onModelReady;

  @override
  Widget build(BuildContext _context) => _viewBuilder<T>(
        viewModelBuilder: viewModelBuilder,
        builder: builder,
        onModelReady: onModelReady,
      );
}

class LoadingViewBuilder<T extends BaseViewModel> extends StatelessWidget {
  const LoadingViewBuilder({
    Key? key,
    required this.viewModelBuilder,
    required this.builder,
    this.onModelReady,
    this.isBusyFunc,
    this.isFullScreen = false,
    this.busyColor = Colors.white,
  }) : super(key: key);

  final T Function() viewModelBuilder;

  final Widget Function(T) builder;

  final dynamic Function(T)? onModelReady;

  final bool Function(T)? isBusyFunc;

  final bool isFullScreen;

  final Color busyColor;

  @override
  Widget build(BuildContext _context) => _loadingViewBuilder<T>(
        viewModelBuilder: viewModelBuilder,
        builder: builder,
        onModelReady: onModelReady,
        isBusyFunc: isBusyFunc,
        isFullScreen: isFullScreen,
        busyColor: busyColor,
      );
}

class ModalProgress extends StatelessWidget {
  const ModalProgress({
    Key? key,
    this.busyColor = DColors.barrier,
    required this.isLoading,
    required this.child,
  }) : super(key: key);

  final Color busyColor;

  final bool isLoading;

  final Widget child;

  @override
  Widget build(BuildContext _context) => _modalProgress(
        busyColor: busyColor,
        isLoading: isLoading,
        child: child,
      );
}

class CenterLoading extends StatelessWidget {
  const CenterLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _centerLoading();
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _loading();
}

class Barrier extends StatelessWidget {
  const Barrier({
    Key? key,
    this.color = DColors.barrier,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext _context) => _barrier(color: color);
}
