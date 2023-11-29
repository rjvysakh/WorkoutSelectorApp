// select_workouts_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_selector/pages/select_workout/cubit/select_workout_cubit.dart';
import 'package:workout_selector/pages/select_workout/widgets/select_option_widget.dart';
import 'package:workout_selector/models/selectable_option.dart';

/// page for selecting workouts
class SelectWorkoutsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<SelectWorkoutsCubit>().loadWorkouts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Workouts'),
      ),
      body: BlocBuilder<SelectWorkoutsCubit, SelectWorkoutsState>(
        builder: (BuildContext context, SelectWorkoutsState state) {
          if (state is SelectWorkoutsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SelectWorkoutsLoaded) {
            final List<SelectableOption> selectableOptions =
                state.selectableOptions;

            return Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 50,
                  childAspectRatio: 0.7,
                ),
                itemCount: selectableOptions.length,
                itemBuilder: (BuildContext context, int index) {
                  // Return your custom widget for each selectable option
                  return SelectableOptionWidget(
                    option: selectableOptions[index],
                    onTap: (SelectableOption opt) => context
                        .read<SelectWorkoutsCubit>()
                        .toggleOptionSelection(opt),
                  );
                },
              ),
            );
          } else if (state is SelectWorkoutsError) {
            return const Center(
              child: Text('Error loading workouts'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
