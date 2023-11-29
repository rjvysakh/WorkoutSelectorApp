# Workout Selector App

The Workout Selector App is a Flutter application that allows users to select workout options with a limit of 3 selections. It employs the Flutter BLoC pattern for state management, freezed for immutable models, and shared_preferences for persistent storage.

## Features

1. **State Management**: Utilizes the `flutter_bloc` package with Cubit for state management.

2. **Freezed Models**: Implements immutable models using the `freezed` package.

3. **Persistent Storage**: Uses `shared_preferences` for saving and retrieving selected workout data, ensuring persistence across app restarts.

4. **Loading Indicator and Snackbar**: Displays loading indicators and snackbar notifications using Flutter's state management.

5. **Animation**: Applies animations to enhance the user experience when selecting/deselecting workout options.

## Requirements

Ensure you have the following dependencies installed:

- Flutter: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: [Install Dart](https://dart.dev/get-dart)

## Getting Started

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/rjvysakh/WorkoutSelectorApp.git
   cd WorkoutSelectorApp

2. **Navigate to the project directory:**

    ```bash
    cd your-repository
    ```

3. **Install dependencies:**

    ```bash
    flutter pub get
    ```

4. **Run the app:**

    ```bash
    flutter run
    ```

## State Management

The app uses the BLoC pattern with the `flutter_bloc` package. The main Cubit is `SelectWorkoutsCubit`, responsible for managing the state related to workout selection.

## Freezed Models

Models in the project are defined using the `freezed` package to ensure immutability and ease of use.

## Persistent Storage
The `OptionsRepository` in the `repositories` folder provides functions to interact with shared preferences for saving and retrieving workout data.

## Loading Indicator and Snackbar
The `Loader` widget and `ScaffoldMessengerExtension` are used for displaying loading indicators and error messages via snackbars.

## Animation
Animations are applied to the workout selection process to enhance the user experience. The `SelectableOptionWidget` features a smooth animation when tapping on workout options.


- **lib/**
  - **cubit/** - Contains the Cubit classes for state management.
  - **models/** - Includes model classes like `SelectableOption`.
  - **pages/** - Holds the pages/screens of the app.
  - **repositories/** - Contains the repository classes for data handling.
  - **widgets/** - Includes reusable widgets used in different parts of the app.
  - **theme/** - Holds the theme configurations for the app.
  - **services/** - Includes service functions.
  - **main.dart** - The entry point of the app.

- **test/** - Includes test files and test-related configurations.
- **assets/** - Contains static assets like images.

## Coding Standards
The project adheres to linting rules for clean and consistent code. Key linting rules can be found in the `analysis_options.yaml` file.

## Example Linting Rules

- **public_member_api_docs:** 
- **library_private_types_in_public_api:** 
- **constant_identifier_names:** 
- **sort_pub_dependencies:** 
- **cascade_invocations:** 
- **sort_constructors_first:** 

## Demo

![App Demo](demo.gif)

