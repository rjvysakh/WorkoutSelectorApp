import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workout_selector/pages/select_workout/widgets/select_option_widget.dart';
import 'package:workout_selector/models/selectable_option.dart';

void main() {
  testWidgets('SelectableOptionWidget should trigger onTap callback',
      (WidgetTester tester) async {
    // Create a mock SelectableOption
    final SelectableOption mockOption = SelectableOption(
      id: 1,
      name: 'Mock Option',
      imagePath: 'assets/images/workout_item_image.png',
      isSelected: false,
    );

    // Create a mock onTap callback
    bool onTapCalled = false;
    void mockOnTap(SelectableOption tappedOption) {
      onTapCalled = true;
      // Ensure that the tapped option is the same as the mock option
      expect(tappedOption, mockOption);
    }

    // Build our widget and trigger a tap
    await tester.pumpWidget(
      MaterialApp(
        home: SelectableOptionWidget(
          option: mockOption,
          onTap: mockOnTap,
        ),
      ),
    );

    // Tap the widget
    await tester.tap(find.byType(SelectableOptionWidget));

    // Wait for the animation to complete
    await tester.pumpAndSettle();

    // Ensure that onTap callback was called
    expect(onTapCalled, true);
  });
}
