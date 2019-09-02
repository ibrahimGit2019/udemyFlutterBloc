import 'package:flutter/material.dart';
import 'package:login_page/blocs/bloc.dart';
import 'package:login_page/mixins/validation_mixin.dart';

class LoginScreen extends StatelessWidget with ValidationMixins {
  LoginScreen({Key key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Divider(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'you@example.com',
              errorText: 'err'),
          validator: validateEmail),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: '',
          ),
          validator: validatePassword),
    );
  }

  Widget submitButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text('Login'),
        elevation: 10,
        onPressed: () {
          print(formKey.currentState.validate());
          // formKey.currentState.reset();
        },
      ),
    );
  }
}
