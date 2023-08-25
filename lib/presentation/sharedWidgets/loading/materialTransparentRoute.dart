// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MaterialTransparentRoute<T> extends PageRoute<T>
    with MaterialRouteTransitionMixin<T> {
  MaterialTransparentRoute({
    required this.builder,
    this.maintainState = true,
    bool fullscreenDialog = false,
  }) : super(fullscreenDialog: fullscreenDialog);

  final WidgetBuilder builder;

  @override
  Widget buildContent(BuildContext context) => builder(context);

  @override
  bool get opaque => false;

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';
}
