import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_selector/pages/select_workout/cubit/select_workout_cubit.dart';
import 'package:workout_selector/pages/select_workout/select_workout_page.dart';
import 'package:workout_selector/services/shared_preferences.dart';
import 'package:workout_selector/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // /// Add test data to shared preferences
  // final SharedPreferencesService sharedPreferencesService =
  //     SharedPreferencesService();
  // await sharedPreferencesService.addTestData();

  runApp(const MyApp());
}

/// MyApp function which gets runned on runApp
class MyApp extends StatelessWidget {
  ///initialise myApp using key
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout Selector',
      theme: AppTheme.darkTheme,
      home: BlocProvider<SelectWorkoutsCubit>(
        create: (BuildContext context) => SelectWorkoutsCubit(
            SharedPreferencesService()), // Use your repository implementation
        child: SelectWorkoutsPage(),
      ),
    );
  }
}
