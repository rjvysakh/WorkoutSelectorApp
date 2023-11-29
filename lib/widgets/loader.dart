import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A widget that displays a loading indicator based on the state of a BLoC.
///
/// The `Loader` widget listens to the state changes in a BLoC (Bloc) and
/// displays a loading indicator when the specified condition is met using the
/// [selector] function. It is particularly useful for showing a loading spinner
/// when an asynchronous operation is in progress.
///
/// The [selector] function takes the current state of the BLoC and returns a
/// boolean value indicating whether the loading indicator should be displayed.
///
class Loader<B extends StateStreamable<S>, S> extends StatelessWidget {
  /// Creates a [Loader] widget.
  ///
  /// The [selector] function is required to determine the loading state.
  const Loader({
    Key? key,
    required this.selector,
  }) : super(key: key);

  /// The function that determines whether the loading indicator should be displayed.
  ///
  /// This function takes the current state of the BLoC and returns a boolean
  /// value. If the returned value is `true`, the loading indicator will be displayed.
  final BlocWidgetSelector<S, bool> selector;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, bool>(
      selector: selector,
      builder: (BuildContext context, bool loading) {
        return Visibility(
          visible: loading,
          child: const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
