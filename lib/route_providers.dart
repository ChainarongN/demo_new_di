import 'package:demo_fuc/inject.dart';
import 'package:demo_fuc/repositorys/repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'providers/provider.dart';

List<SingleChildWidget> routeProvider() {
  return [
    ChangeNotifierProvider(create: (_) => LoginProvider(getIt<ILoginRepository>())),
  ];
}
