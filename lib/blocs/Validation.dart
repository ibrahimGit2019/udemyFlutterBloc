import 'dart:async';

class BlocValidators {
  final emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@'))
      sink.add(email);
    else
      sink.addError('Not valid email');
  });

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length < 3)
      sink.addError('Must be at least 4 Charcters');
    else
      sink.add(password);
  });
}
