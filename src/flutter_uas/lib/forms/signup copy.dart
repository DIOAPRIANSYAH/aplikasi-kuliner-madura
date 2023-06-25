// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_uas/forms/login.dart';

// class Signup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
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
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 40),
//           height: MediaQuery.of(context).size.height - 50,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   const Text(
//                     "Sign up",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Daftar akun aplikasi ",
//                     style: TextStyle(fontSize: 15, color: Colors.grey[700]),
//                   )
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   inputFile(label: "Username"),
//                   inputFile(label: "Email"),
//                   inputFile(label: "Password", obscureText: true),
//                   inputFile(label: "Konfirmasi Password ", obscureText: true),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40),
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
//                         MaterialPageRoute(builder: (context) => Login()),
//                       );
//                     },
//                     color: const Color(0xff0095FF),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: const Text(
//                       "Daftar",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Login()),
//                   );
//                 },
//                 child: Container(
//                   height: 30,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(50)),
//                   margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//                   child: const Center(
//                       child: Text(
//                     "Sudah punya akun? Login",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   )),
//                 ),
//               ),
//             ],
//           ),
//         ),
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
//       const SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: const Color.fromRGBO(189, 189, 189, 1)),
//             ),
//             border: OutlineInputBorder(
//                 borderSide:
//                     BorderSide(color: const Color.fromRGBO(189, 189, 189, 1)))),
//       ),
//       const SizedBox(
//         height: 10,
//       )
//     ],
//   );
// }
