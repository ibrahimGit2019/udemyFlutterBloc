import 'package:flutter/material.dart';
import 'package:login_page/src/app.dart';

void main() {
  runApp(App());
}

// class LoginPage extends StatefulWidget {
//   LoginPage({Key key}) : super(key: key);

//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> with ValidationMixins {
//   final formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       child: Form(
//         key: formKey,
//         child: Column(
//           children: <Widget>[
//             emailField(),
//             passwordField(),
//             submitButton(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget emailField() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//           keyboardType: TextInputType.emailAddress,
//           decoration: InputDecoration(
//             labelText: 'Email',
//             hintText: 'you@example.com',
//           ),
//           validator: validateEmail),
//     );
//   }

//   Widget passwordField() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//           keyboardType: TextInputType.text,
//           obscureText: true,
//           decoration: InputDecoration(
//             labelText: 'Password',
//             hintText: '',
//           ),
//           validator: validatePassword),
//     );
//   }

//   Widget submitButton() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: RaisedButton(
//         child: Text('Save data'),
//         elevation: 10,
//         onPressed: () {
//           print(formKey.currentState.validate());
//           // formKey.currentState.reset();
//         },
//       ),
//     );
//   }
// }
