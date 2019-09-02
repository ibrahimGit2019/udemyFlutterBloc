import 'dart:async';

import 'package:login_page/blocs/Validation.dart';

class Bloc with BlocValidators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get transformEmail =>
      _emailController.stream.transform(emailValidator);
  Stream<String> get transformPassword =>
      _passwordController.stream.transform(passwordValidator);

  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
