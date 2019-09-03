import 'package:flutter/material.dart';
import 'package:login_page/blocs/Provider.dart';
import 'package:login_page/blocs/bloc.dart';
import 'package:login_page/mixins/validation_mixin.dart';

class LoginScreen extends StatelessWidget with ValidationMixins {
  LoginScreen({Key key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(bloc),
            passwordField(bloc),
            Divider(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.transformEmail,
      //initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: bloc.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'you@example.com',
                  errorText: snapshot.error),
            ),
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.transformPassword,
      //initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: bloc.changePassword,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '***',
                  errorText: snapshot.error),
            ),
          ),
        );
      },
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
