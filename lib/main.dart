import 'package:demo_fuc/inject.dart';
import 'package:demo_fuc/pages/login/login.dart';
import 'package:demo_fuc/route_providers.dart';
import 'package:demo_fuc/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies(Env.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: routeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginPage(),
        initialRoute: '/loginPage',
        routes: routes,
      ),
    );
  }
}
