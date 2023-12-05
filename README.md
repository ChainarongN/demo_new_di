# demo_fuc

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Run
 - flutter pub get 
 - flutter run

# DI

flutter pub run build_runner build  
flutter pub run build_runner watch

- add @Environment("dev") or @Environment("prod") in dependency file
- add @Injectable(as: ILoginRepository) in dependency file
  - "ILoginRepository" is abstract class
- inject "ILoginRepository" to state management