// import 'package:chat_app/App/components/RoundedButton.dart';
// import 'package:chat_app/App/constants.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';
//
// import '../../HomeScrean.dart';
//
// class ChatLogin extends StatefulWidget {
//   const ChatLogin({Key? key}) : super(key: key);
//
//   @override
//   _ChatLoginState createState() => _ChatLoginState();
// }
//
// class _ChatLoginState extends State<ChatLogin> {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   bool showSpinner = false;
//   late String email;
//   late String password;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Firebase.initializeApp();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ModalProgressHUD(
//         inAsyncCall: showSpinner,
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text('ChatApp'),
//               SizedBox(
//                 height: 45,
//               ),
//               TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   email = value;
//                 },
//                 decoration:
//                     kTextFieldDecoration.copyWith(hintText: 'Enter Your Email'),
//               ),
//               SizedBox(
//                 height: 8.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   password = value;
//                 },
//                 decoration: kTextFieldDecoration.copyWith(
//                     hintText: 'Enter your password'),
//               ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               RoundedButton(
//                 title: 'Login',
//                 colour: Colors.lightBlueAccent,
//                 onPressed: () async {
//                   setState(() {
//                     showSpinner = true;
//                   });
//                   try {
//                     final user = await _firebaseAuth.signInWithEmailAndPassword(
//                         email: email, password: password);
//                     if (user != null) {
//                       Navigator.pushNamed(context, ChatScreen.id);
//                     }
//
//                     setState(() {
//                       showSpinner = false;
//                     });
//                   } catch (e) {
//                     print(e);
//                   }
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
