import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_selector/models/selectable_option.dart';
import 'package:workout_selector/repositories/options_repository.dart';

part 'select_workout_state.dart';

/// Cubit for managing the state of selecting workouts.
///
/// This Cubit handles loading the list of workouts, toggling the selection
/// state of individual workouts, and saving the updated state to the repository.
class SelectWorkoutsCubit extends Cubit<SelectWorkoutsState> {
  /// Creates an instance of [SelectWorkoutsCubit] with the provided [repository].
  SelectWorkoutsCubit(this.repository) : super(SelectWorkoutsLoading());

  /// Repository for accessing workout options and storing the state.
  final OptionsRepository repository;

  /// Loads the list of workouts from the repository.
  ///
  /// If successful, emits a [SelectWorkoutsLoaded] state with the list of
  /// selectable workout options. In case of an error, emits a [SelectWorkoutsError] state.
  Future<void> loadWorkouts() async {
    try {
      final List<SelectableOption> options = await repository.getWorkoutsList();
      emit(SelectWorkoutsLoaded(selectableOptions: options));
    } catch (e) {
      emit(SelectWorkoutsError());
    }
  }

  /// Toggles the selection state of a workout option.
  ///
  /// This method is called when a user interacts with a workout option.
  /// It updates the state to reflect the changed selection and saves the
  /// updated state to the repository.
  ///
  /// The [option] parameter represents the workout option to be toggled.
  void toggleOptionSelection(SelectableOption option) {
    final List<SelectableOption> currentOptions =
        (state as SelectWorkoutsLoaded).selectableOptions;
    final List<SelectableOption> updatedOptions =
        currentOptions.map((SelectableOption opt) {
      return opt.id == option.id
          ? opt.copyWith(isSelected: !opt.isSelected)
          : opt;
    }).toList();
    emit(SelectWorkoutsLoaded(selectableOptions: updatedOptions));
    repository.saveSelectableOptions(updatedOptions);
  }
}
