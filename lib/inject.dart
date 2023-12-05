import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:demo_fuc/inject.config.dart';

var getIt = GetIt.instance;

// กำหนดตัวสำหรับตั้งค่า get_it
// ฟังก์ชันที่ชื่อ $initGetIt จะถูกสร้างเมื่อเราสั่ง build_runner
@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies(String env) => getIt.init(environment: env);

// กำหนดว่าอยากให้มี Environment อะไรบ้างตามแต่ใจของเราเลย
abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
