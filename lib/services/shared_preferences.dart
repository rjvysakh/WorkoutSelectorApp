import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_selector/models/selectable_option.dart';
import 'package:workout_selector/repositories/options_repository.dart';

/// Service for accessing and writing into shared preferences
class SharedPreferencesService implements OptionsRepository {
  final String _key = 'selectable_options';

  @override
  Future<List<SelectableOption>> getWorkoutsList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jsonString = prefs.getString(_key);
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList
          .map((dynamic json) => SelectableOption.fromJson(json))
          .toList();
    } else {
      return <SelectableOption>[];
    }
  }

  @override
  Future<void> saveSelectableOptions(List<SelectableOption> options) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jsonString = json.encode(options);
    await prefs.setString(_key, jsonString!);
  }

  /// Test method to add some data for testing
  Future<void> addTestData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    // Assuming you have a list of SelectableOption objects to add
    final List<SelectableOption> testData = <SelectableOption>[
      SelectableOption(
          id: 1,
          name: 'Body Weight',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
      SelectableOption(
          id: 2,
          name: 'Dumbbel',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
      SelectableOption(
          id: 3,
          name: 'Squats',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
      SelectableOption(
          id: 4,
          name: 'Pushups',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
      SelectableOption(
          id: 5,
          name: 'Pullups',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
      SelectableOption(
          id: 6,
          name: 'Bench push',
          isSelected: false,
          imagePath: 'assets/images/workout_item_image.png'),
    ];

    final String? jsonString = json.encode(testData);
    await prefs.setString(_key, jsonString!);
  }
}
