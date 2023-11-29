// select_workouts_state.dart

part of 'select_workout_cubit.dart';

/// Base class for the state of the Select Workouts feature.
@immutable
abstract class SelectWorkoutsState {}

/// Represents the state when the Select Workouts feature is in the process of loading.
class SelectWorkoutsLoading extends SelectWorkoutsState {}

/// Represents the state when the Select Workouts feature has successfully loaded the list of selectable options.
///
/// The [selectableOptions] parameter contains the list of workout options that can be selected.
class SelectWorkoutsLoaded extends SelectWorkoutsState {
  /// Constructor for the SelectWorkoutsLoaded state.
  ///
  /// The [selectableOptions] parameter is required and contains the list of workout options.
  SelectWorkoutsLoaded({required this.selectableOptions});

  /// List of workout options that can be selected.
  final List<SelectableOption> selectableOptions;
}

/// Represents the state when an error occurs while loading or managing the Select Workouts feature.
class SelectWorkoutsError extends SelectWorkoutsState {}
