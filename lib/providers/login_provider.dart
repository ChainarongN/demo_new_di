import 'package:demo_fuc/repositorys/login/i_login_repository.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final ILoginRepository _loginRepository;
  LoginProvider(this._loginRepository);
  num _counter = 0;

  get currentCounter => _counter;

  increment() {
    _counter += _loginRepository.getIncrement();
    notifyListeners();
  }
}
