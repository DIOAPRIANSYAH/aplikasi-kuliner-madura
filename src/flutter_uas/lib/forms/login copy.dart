// import 'package:coolicons/coolicons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_uas/forms/signup.dart';
// import 'package:flutter_uas/navBar/bottom_bar.dart';
// import 'package:flutter_uas/services/firebase_sign_in.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:icon_loading_button/icon_loading_button.dart';

// class Login extends StatelessWidget {
//   final IconButtonController _btnController1 = IconButtonController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(20),
//         children: <Widget>[
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   const Text(
//                     "Login",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Masuk melalui akun yang sudah terdaftar",
//                     style: TextStyle(fontSize: 15, color: Colors.grey[700]),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 100),
//                 height: 200,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/background.png"),
//                       fit: BoxFit.fitHeight),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40),
//                 child: Column(
//                   children: <Widget>[
//                     inputFile(label: "Email"),
//                     inputFile(label: "Password", obscureText: true)
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                 child: Container(
//                   padding: const EdgeInsets.only(top: 3, left: 3),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       border: const Border(
//                         bottom: BorderSide(color: Colors.black),
//                         top: BorderSide(color: Colors.black),
//                         left: BorderSide(color: Colors.black),
//                         right: BorderSide(color: Colors.black),
//                       )),
//                   child: MaterialButton(
//                     minWidth: double.infinity,
//                     height: 60,
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const example()),
//                       );
//                     },
//                     color: const Color(0xff0095FF),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: const Text(
//                       "Masuk",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Signup()),
//                   );
//                 },
//                 child: Container(
//                   height: 30,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(50)),
//                   margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//                   child: const Center(
//                       child: Text(
//                     "Belum punya akun? Buat Akun",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   )),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: IconLoadingButton(
//                   color: Colors.white,
//                   iconColor: Color.fromARGB(255, 222, 27, 49),
//                   valueColor: const Color(0xff0066ff),
//                   errorColor: const Color(0xffe0333c),
//                   successColor: Color.fromARGB(255, 9, 199, 50),
//                   child: Text(
//                     'Login with Google',
//                     style: GoogleFonts.openSans().copyWith(
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromARGB(255, 29, 29, 29),
//                     ),
//                   ),
//                   iconData: Coolicons.google,
//                   onPressed: () {
//                     signInWithGoogle().then((result) {
//                       if (result != null) {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return const example();
//                         }));
//                       }
//                     });
//                     Future.delayed(const Duration(seconds: 1), () {
//                       _btnController1.success();
//                     });
//                   },
//                   successIcon: Icons.check_circle_outline_rounded,
//                   controller: _btnController1,
//                 ),
//               ),
//               const SizedBox(height: 200),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // we will be creating a widget for text field
// Widget inputFile({label, obscureText = false}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: const TextStyle(
//             fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//       ),
//       const SizedBox(height: 5),
//       TextField(
//         obscureText: obscureText,
//         decoration: const InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Color.fromRGBO(189, 189, 189, 1)),
//             ),
//             border: OutlineInputBorder(
//                 borderSide:
//                     BorderSide(color: Color.fromRGBO(189, 189, 189, 1)))),
//       ),
//       const SizedBox(height: 10),
//     ],
//   );
// }
