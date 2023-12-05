# demo_fuc



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
