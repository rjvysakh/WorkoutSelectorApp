import 'package:workout_selector/models/selectable_option.dart';

/// Abstract class representing a repository for managing selectable options related to workouts.
///
/// This class defines two asynchronous methods that concrete implementations must implement:
/// - `getWorkoutsList()`: Fetches and returns a list of selectable workout options.
/// - `saveSelectableOptions(List<SelectableOption> options)`: Saves the provided list of selectable options.
///
abstract class OptionsRepository {
  /// Fetches and returns a list of selectable workout options.
  ///

  Future<List<SelectableOption>> getWorkoutsList();

  /// Saves the provided list of selectable options.
  ///
  Future<void> saveSelectableOptions(List<SelectableOption> options);
}
