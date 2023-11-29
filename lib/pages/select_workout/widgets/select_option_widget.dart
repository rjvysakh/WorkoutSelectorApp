import 'package:flutter/material.dart';
import 'package:workout_selector/models/selectable_option.dart';

/// Widget that represents a selectable option in the grid.
///
/// The [option] parameter contains information about the selectable option.
/// The [onTap] parameter is a callback function that is triggered when the option is tapped.
class SelectableOptionWidget extends StatelessWidget {
  /// Constructor for the SelectableOptionWidget.
  ///
  /// The [option] and [onTap] parameters are required.
  const SelectableOptionWidget({
    required this.option,
    required this.onTap,
  });

  /// Information about the selectable option.
  final SelectableOption option;

  /// Callback function triggered when the option is tapped.
  final Function(SelectableOption) onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = option.isSelected;

    return GestureDetector(
      onTap: () {
        // Capture tap on the whole widget and propagate the function
        onTap(option);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Image with a radio button at the bottom right corner
          Flexible(
            child: Stack(
              children: <Widget>[
                // Image
                Material(
                  borderRadius: BorderRadius.circular(12),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(
                          option.imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 66, 66, 66),
                      onTap: () {
                        onTap(option);
                      },
                    ),
                  ),
                ),
                // Radio button at the bottom right corner
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: AnimatedSwitcher(
                    switchInCurve: Curves.bounceInOut,
                    switchOutCurve: Curves.elasticInOut,
                    duration: const Duration(milliseconds: 200),
                    child: isSelected
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.black,
                            size: 24,
                            key: ValueKey<bool>(true),
                          )
                        : const Icon(
                            Icons.radio_button_unchecked,
                            color: Colors.grey,
                            size: 24,
                            key: ValueKey<bool>(false),
                          ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            option.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
