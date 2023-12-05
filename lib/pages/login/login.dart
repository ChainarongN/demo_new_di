import 'package:demo_fuc/providers/login_provider.dart';
import 'package:demo_fuc/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var loginWatchProvider = context.watch<LoginProvider>();
    var loginReadProvider = context.read<LoginProvider>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Text('${loginWatchProvider.currentCounter}'),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    loginReadProvider.increment();
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: AppColors.primiryColor, spreadRadius: 2),
                      ],
                    ),
                    child: const Center(child: Text('Increment')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
