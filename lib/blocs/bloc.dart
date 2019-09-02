import 'dart:async';

import 'package:login_page/blocs/Validation.dart';

class Bloc with BlocValidators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _emailController.sink.add;

  Stream<String> get listenEmail => _emailController.stream;
  Stream<String> get listenPassword => _passwordController.stream;

  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
