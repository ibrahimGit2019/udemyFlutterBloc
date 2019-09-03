import 'package:flutter/material.dart';
import 'package:login_page/src/screens/LoginScreen.dart';
import 'package:login_page/blocs/Provider.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
