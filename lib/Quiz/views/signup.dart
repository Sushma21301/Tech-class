// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quiz_app1/helper/functions.dart';
// import 'package:quiz_app1/services/auth.dart';
// import 'package:quiz_app1/views/create_quiz.dart';
// import 'package:quiz_app1/views/home.dart';
// import 'package:quiz_app1/views/signin.dart';
// import 'package:quiz_app1/widgets/widgets.dart';
//
// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   final _formKey = GlobalKey<FormState>();
//   String name, email, password;
//   AuthService authService = new AuthService();
//   bool _isLoading = false;
//   signUp() {
//     if (_formKey.currentState.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       authService.signUpWithEmailAndPassword(email, password).then((value) {
//         if (value != null) {
//           setState(() {
//             _isLoading = false;
//           });
//           HelperFunctions.saveUserLoggedInDetails(isLoggedin: true);
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => SignIn()));
//         }
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: appBar(context),
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         brightness: Brightness.light,
//       ),
//       body: _isLoading
//           ? Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             )
//           : Form(
//               key: _formKey,
//               child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(
//                   children: [
//                     Spacer(),
//                     TextFormField(
//                       validator: (val) {
//                         return val.isEmpty ? "Enter correct Name" : null;
//                       },
//                       decoration: InputDecoration(hintText: "Name"),
//                       onChanged: (val) {
//                         name = val;
//                       },
//                     ),
//                     TextFormField(
//                       validator: (val) {
//                         return val.isEmpty ? "Enter correct Emailid" : null;
//                       },
//                       decoration: InputDecoration(hintText: "Email"),
//                       onChanged: (val) {
//                         email = val;
//                       },
//                     ),
//                     SizedBox(
//                       height: 6,
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                       validator: (val) {
//                         return val.isEmpty ? "Enter correct Password" : null;
//                       },
//                       decoration: InputDecoration(hintText: "Password"),
//                       onChanged: (val) {
//                         password = val;
//                       },
//                     ),
//                     SizedBox(
//                       height: 24,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         signUp();
//                       },
//                       child: blueButton(context: context, label: "Sign Up"),
//                     ),
//                     SizedBox(
//                       height: 18,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Already have an account? ',
//                             style: TextStyle(fontSize: 15.5)),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SignIn()));
//                           },
//                           child: Text(
//                             'Sign In',
//                             style: TextStyle(
//                               fontSize: 15.5,
//                               decoration: TextDecoration.underline,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 80,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }
