import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_option.freezed.dart';
part 'selectable_option.g.dart';

/// Freezed union class for representing selectable options.
///
/// This class is annotated with Freezed, providing immutability and code generation for union classes.
///
/// The [SelectableOption] class has several parameters:
/// - [id]: An integer representing the unique identifier of the option.
/// - [name]: A string containing the name or title of the option.
/// - [imagePath]: A string representing the path to the image associated with the option.
/// - [isSelected]: A boolean indicating whether the option is selected. Defaults to false.
///
/// The class has two constructors:
/// - The primary constructor creates an instance of [SelectableOption] with the specified parameters.
/// - The [fromJson] factory constructor creates an instance of [SelectableOption] from a JSON map.
@freezed
abstract class SelectableOption with _$SelectableOption {
  /// Named constructor for creating an instance of [SelectableOption].
  ///
  /// This constructor is named `_SelectableOption` and is used internally for creating instances of
  /// [SelectableOption]. It takes the following parameters:
  /// - [id]: An integer representing the unique identifier of the option.
  /// - [name]: A string containing the name or title of the option.
  /// - [imagePath]: A string representing the path to the image associated with the option.
  /// - [isSelected]: A boolean indicating whether the option is selected. Defaults to false.
  ///
  /// Example usage:
  /// ```dart
  /// SelectableOption myOption = SelectableOption(id: 1, name: 'Option 1', imagePath: 'assets/image.png');
  /// ```
  factory SelectableOption({
    required int id,
    required String name,
    required String imagePath,
    @Default(false) bool isSelected,
  }) = _SelectableOption;

  /// Factory constructor to create an instance of [SelectableOption] from a JSON map.
  factory SelectableOption.fromJson(Map<String, dynamic> json) =>
      _$SelectableOptionFromJson(json);
}
