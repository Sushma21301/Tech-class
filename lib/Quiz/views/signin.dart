// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quiz_app1/helper/functions.dart';
// import 'package:quiz_app1/services/auth.dart';
// import 'package:quiz_app1/views/create_quiz.dart';
// import 'package:quiz_app1/views/home.dart';
// import 'package:quiz_app1/views/signup.dart';
// import 'package:quiz_app1/widgets/widgets.dart';
//
// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }
//
// class _SignInState extends State<SignIn> {
//   final _formKey = GlobalKey<FormState>();
//   String email, password;
//   AuthService authService = new AuthService();
//
//   bool _isLoading = false;
//
//   signIn() async {
//     if (_formKey.currentState.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       await authService.signInEmailAndPass(email, password).then((val) {
//         if (val != null) {
//           setState(() {
//             _isLoading = false;
//           });
//           HelperFunctions.saveUserLoggedInDetails(isLoggedin: true);
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => CreateQuiz()));
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
//                 child: Column(
//                   children: [
//                     Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                       child: TextFormField(
//                         validator: (val) {
//                           return val.isEmpty ? "Enter correct Emailid" : null;
//                         },
//                         decoration: InputDecoration(hintText: "Email"),
//                         onChanged: (val) {
//                           email = val;
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 6,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                       child: TextFormField(
//                         validator: (val) {
//                           return val.isEmpty ? "Enter correct Password" : null;
//                         },
//                         decoration: InputDecoration(hintText: "Password"),
//                         onChanged: (val) {
//                           password = val;
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 24,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         signIn();
//                       },
//                       child: blueButton(context: context, label: "Sign In"),
//                     ),
//                     SizedBox(
//                       height: 18,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Don\'t have an account? ',
//                             style: TextStyle(fontSize: 15.5)),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SignUp()));
//                           },
//                           child: Text(
//                             'Sign Up',
//                             style: TextStyle(
//                               fontSize: 15.5,
//                               decoration: TextDecoration.underline,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 80,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//     );
//   }
// }
